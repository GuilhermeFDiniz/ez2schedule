class AddImageToCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :image, :string
  end
end
