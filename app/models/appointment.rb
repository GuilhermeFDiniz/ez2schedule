class Appointment < ApplicationRecord
  belongs_to :teacher
  belongs_to :user
end
