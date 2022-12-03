class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[destroy edit update show]

  def student_appointments
    @appointments_student = policy_scope(Appointment)
    @appointments = []
    @appointments_student.each { |appointment| @appointments << appointment if appointment.user == current_user }
  end

  def teacher_appointments
    @appointments_teacher = policy_scope(Appointment)
    @appointments = []
    @appointments_teacher.each { |appointment| @appointments << appointment if appointment.teacher == current_user }
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
    @appointment = Appointment.new(appointment_params)
    @appointment.user = current_user
    @appointment.teacher = @teacher
    Chatroom.create!(user: current_user, teacher: @teacher, appointment: @appointment)
    authorize @appointment
    if @appointment.save
      Category.where(id: params[:appointment][:categories]).each do |category|
        AppointmentCategory.create!(appointment: @appointment, category: category)
      end
      redirect_to appointment_path(@appointment)
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

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:start_time, :end_time, :description, :remote)
  end
end
