class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user

  def sender?(a_user)
    user.id == a_user.id
  end
end
