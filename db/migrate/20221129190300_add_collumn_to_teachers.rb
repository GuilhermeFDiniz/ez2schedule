class AddCollumnToTeachers < ActiveRecord::Migration[7.0]
  def change
    add_column :teachers, :in_person, :boolean
  end
end
