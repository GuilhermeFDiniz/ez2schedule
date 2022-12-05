class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.integer :rating
      t.text :review_content
      t.text :description
      t.datetime :start_time
      t.datetime :end_time
      t.references :teacher, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.monetize :amount, currency: { present: false }
      t.string :checkout_session_id
      t.timestamps
      t.string :state
    end
  end
end
