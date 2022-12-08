class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :teacher, dependent: :destroy
  has_one_attached :avatar_image
  has_many :appointments, dependent: :destroy

  def teacher?
    teacher.present?
  end
end
