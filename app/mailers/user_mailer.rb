class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome

    @user = params[:user]
    mail(to: @user.email, subject: "Welcome to Ez2Schedule")


    @greeting = "Hi"

    mail to: "to@example.org"
  end
  
end
