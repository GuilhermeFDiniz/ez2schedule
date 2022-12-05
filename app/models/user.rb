class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :teacher
  has_one_attached :avatar_image
  has_many :appointments

  def teacher?
    teacher.present?
  end
end
