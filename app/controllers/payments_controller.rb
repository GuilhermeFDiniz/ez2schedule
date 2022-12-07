class PaymentsController < ApplicationController
  def new
    @appointment = current_user.appointments.where(state: 'pending').find(params[:appointment_id])
  authorize @appointment
  end
end
