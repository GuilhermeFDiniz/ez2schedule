class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[destroy edit update show successfull_payment]

  def student_appointments
    @appointments_student = policy_scope(Appointment)
    @appointments = []
    @appointments_student.each { |appointment| @appointments << appointment if appointment.user == current_user }
  end

  def teacher_appointments
    @appointments_teacher = policy_scope(Appointment)
    @appointments = []
    @appointments_teacher.each { |appointment| @appointments << appointment if appointment.teacher.user == current_user }
  end

  def show
    authorize @appointment
  end

  def new
    @teacher = Teacher.find(params[:teacher_id])
    start_date = Date.today
    @appointments = @teacher.appointments.where(start_time: start_date.beginning_of_week..start_date.end_of_week)
    @appointment = Appointment.new
    authorize @appointment
  end

  def create
    @teacher = Teacher.find(params[:teacher_id])
    start_date = Date.today
    @appointments = @teacher.appointments.where(start_time: start_date.beginning_of_week..start_date.end_of_week)

    @appointment = Appointment.new(appointment_params)
    @appointment.state = 'pending'
    @appointment.user = current_user
    @appointment.teacher = @teacher
    authorize @appointment
    if @appointment.save
      Category.where(id: params[:appointment][:categories]).each do |category|
        AppointmentCategory.create!(appointment: @appointment, category: category)
      end
      if Chatroom.where(user: @appointment.user).where(teacher: @appointment.teacher).empty? && Chatroom.where(user: @appointment.teacher).where(teacher: @appointment.user).empty?
        Chatroom.create!(user: current_user, teacher: @teacher, appointment: @appointment)
      end
      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
          price_data: {
            currency: 'brl',
            unit_amount: @teacher.price_cents,
            product_data: {
              name: @appointment.teacher.user.first_name,
            }
          },
          quantity: 1
        }],
        mode: 'payment',
        success_url: successfull_payment_appointment_url(@appointment),
        cancel_url: appointment_url(@appointment)
      )
      @appointment.update(checkout_session_id: session.id)
      redirect_to new_appointment_payment_path(@appointment)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @teacher = @appointment.teacher
    start_date = Date.today
    @appointments = @teacher.appointments.where(start_time: start_date.beginning_of_week..start_date.end_of_week)
    authorize @appointment
  end

  def update
    authorize @appointment
    if @appointment.update(appointment_params)
      redirect_to appointments_path, notice: "Appointment was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @appointment
    @appointment.destroy
    redirect_to appointments_path, notice: "Appointment was successfully canceled."
  end

  def successfull_payment
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:start_time, :end_time, :description, :remote)
  end
end
