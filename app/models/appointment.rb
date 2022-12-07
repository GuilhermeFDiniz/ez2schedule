class Appointment < ApplicationRecord
  after_create :send_confirmation_email
  has_many :appointment_categories, dependent: :destroy
  has_many :categories, through: :appointment_categories
  belongs_to :teacher
  belongs_to :user
  has_one :videoroom
  monetize :amount_cents
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :description, presence: true


  private

  def send_confirmation_email
    AppointmentMailer.with(appointment: self).confirmation.deliver_now
  end
end
