class AppointmentsController < ApplicationController

  before_action :set_appointment, only: %i[ destroy edit update show ]

  def index
    @appointments = Appointment.all
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
  # Use callbacks to share common setup or constraints between actions.
  def set_appointment
    @appointment = Appointment.find(params[:id])
  end
  
  def appointment_params
    params.require(:appointment).permit(:start_time, :end_time, :category_id)
  end

end
