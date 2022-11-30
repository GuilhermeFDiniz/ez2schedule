class User < ApplicationRecord
  after_create :send_welcome_email
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :teacher

  def teacher?
    # true
    teacher.present?
  end

  private

  def send_welcome_email
    UserMailer.with(user: self).welcome.deliver_now
  end
  
end
