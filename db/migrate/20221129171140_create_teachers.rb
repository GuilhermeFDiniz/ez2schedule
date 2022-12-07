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
      t.time :start_time
      t.time :end_time
      t.boolean :remote, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
