class Appointment < ApplicationRecord
  belongs_to :teacher
  belongs_to :user
  has_many :appointment_categories
  has_many :categories, through: :appointment_categories
end
