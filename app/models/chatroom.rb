class Chatroom < ApplicationRecord
  belongs_to :user
  belongs_to :teacher
  belongs_to :appointment
  has_many :messages
end
