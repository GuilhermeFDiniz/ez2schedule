class StripeCheckoutSessionService
  def call(event)
    appointment = Appointment.find_by(checkout_session_id: event.data.object.id)
    appointment.update(state: 'paid')
  end
end
