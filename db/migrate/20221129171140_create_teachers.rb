class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.boolean :monday
      t.boolean :tuesday
      t.boolean :wednesday
      t.boolean :thursday
      t.boolean :friday
      t.boolean :saturday
      t.boolean :sunday
      t.datetime :start_time
      t.datetime :end_time
      t.integer :price
      t.boolean :remote
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
