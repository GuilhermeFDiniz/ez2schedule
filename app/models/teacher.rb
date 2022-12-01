class Teacher < ApplicationRecord
  belongs_to :user
  has_many :appointments
  has_many :teacher_categories
  has_many :categories, through: :teacher_categories
  has_one_attached :teacher_video

  validates :user, uniqueness: true

  include PgSearch::Model
  pg_search_scope :search_by_all,
    associated_against: {
      user: %i[first_name last_name about],
      categories: %i[name]
    },
    using: {
      tsearch: { prefix: true }
    }
end
