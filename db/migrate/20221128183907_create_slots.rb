class CreateSlots < ActiveRecord::Migration[7.0]
  def change
    create_table :slots do |t|
      t.references :user, foreign_key: true, null: false
      t.references :student, foreign_key: { to_table: :users }
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.boolean :remote, null: false, default: true
      t.text :review_content
      t.integer :rating
      t.boolean :open, default: true, null: false
      t.text :student_content
      t.integer :price
      t.timestamps
    end
  end
end
