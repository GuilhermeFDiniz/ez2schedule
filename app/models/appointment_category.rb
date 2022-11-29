class AppointmentCategory < ApplicationRecord
  belongs_to :appointment
  belongs_to :category
end
