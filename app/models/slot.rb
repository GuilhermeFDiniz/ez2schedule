class Slot < ApplicationRecord
  belongs_to :user
  belongs_to :student, class_name: "User", optional: true
end
