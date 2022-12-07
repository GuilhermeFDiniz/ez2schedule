class AddAppointmentToVideoroom < ActiveRecord::Migration[7.0]
  def change
    add_reference :videorooms, :appointment, null: false, foreign_key: true
  end
end
