class AddCollumnToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_column :appointments, :remote, :boolean, default: false
  end
end
