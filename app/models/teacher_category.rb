class TeacherCategory < ApplicationRecord
  belongs_to :teacher
  belongs_to :category
end
