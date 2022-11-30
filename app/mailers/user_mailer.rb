class UserMailer < ApplicationMailer
  default from: "Ez2Schedule"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def order_email(user, appointment, teacher)

    @user = user
    @appointment = appointment
    @teacher = teacher
    mail(to: @user.email, subject: "Thanks for choosing Ez2Schedule")


    @greeting1 = "Hi, thanks for choosing Ez2Schedule,"
    @greeting2 = "Hi, thanks for choosing Ez2Schedule."

    mail to: "to@example.org"
  end

end
