class AddInPersonhToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_column :appointments, :in_person, :boolean
  end
end
