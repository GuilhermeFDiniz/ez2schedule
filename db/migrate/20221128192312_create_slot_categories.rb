class CreateSlotCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :slot_categories do |t|
      t.references :slot, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
