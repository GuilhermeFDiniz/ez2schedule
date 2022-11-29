class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :about, :text
    add_column :users, :address, :string
  end
end
