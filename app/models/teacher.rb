class Teacher < ApplicationRecord
  belongs_to :user
  has_many :appointments
  has_many :teacher_categories
  has_many :categories, through: :teacher_categories

  validates :user, uniqueness: true
end
