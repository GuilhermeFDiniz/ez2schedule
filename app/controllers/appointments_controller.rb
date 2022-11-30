class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[ destroy edit update show ]

  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
    # @teacher = Teacher.find(params[:teachder_id])
    @teacher = Teacher.find(2)

    @categories = @teacher.categories
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      mail = UserMailer.with(appointment: @appointment).create_confirmation
      mail.deliver_now
      redirect_to appointments_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @appointment = Appointment.new
  end

  def edit
  end

  def update
    if @appointment.update(appointment_params)
      redirect_to @appointment, notice: "Appointment was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @appointment.destroy
    redirect_to root_path, notice: "Appointment was successfully destroyed."
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:start_time, :end_time, :category_id)
  end
end


