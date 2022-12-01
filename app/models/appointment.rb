class Appointment < ApplicationRecord
  has_many :appointment_categories, dependent: :destroy
  has_many :categories, through: :appointment_categories
  after_create :send_confirmation_email
  belongs_to :teacher
  belongs_to :user

  private

  def send_confirmation_email
    AppointmentMailer.with(appointment: self).confirmation.deliver_now
  end

end
