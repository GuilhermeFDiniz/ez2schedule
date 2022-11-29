class CreateTeacherCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :teacher_categories do |t|
      t.references :teacher, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.timestamps
    end
  end
end
