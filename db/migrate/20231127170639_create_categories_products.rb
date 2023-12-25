class CreateCategoriesProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :categories_products do |t|
      t.references :category, index: true
      t.references :product, index: true
      t.timestamps
    end
  end
end
