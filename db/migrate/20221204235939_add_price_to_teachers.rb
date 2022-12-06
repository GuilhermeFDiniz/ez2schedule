class AddPriceToTeachers < ActiveRecord::Migration[7.0]
  def change
    add_monetize :teachers, :price, currency: { present: false }
  end
end
