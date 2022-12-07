class CreateVideorooms < ActiveRecord::Migration[7.0]
  def change
    create_table :videorooms do |t|
      t.string :session_token
      t.string :generated_token
      t.timestamps
    end
  end
end
