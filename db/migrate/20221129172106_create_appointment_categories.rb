class CreateAppointmentCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :appointment_categories do |t|
      t.references :appointment, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
