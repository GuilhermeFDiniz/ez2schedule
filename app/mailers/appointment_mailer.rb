class AppointmentMailer < ApplicationMailer
  default from: "Ez2Schedule"

  def confirmation

    @appointment = params[:appointment]
    mail(to: @appointment.user.email, subject: "Thanks for choosing Ez2Schedule")

    @greeting1 = "Hi, thanks for choosing Ez2Schedule,"
    @greeting2 = "Hi, thanks for choosing Ez2Schedule."
  end
end
