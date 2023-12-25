class AddReferenceToCategoriesInProducts < ActiveRecord::Migration[7.1]
  def change
    add_reference :products, :category, index: true
  end
end