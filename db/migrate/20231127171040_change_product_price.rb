class ChangeProductPrice < ActiveRecord::Migration[7.1]
  def change
    def up
      change_column :products, :price, :decimal, precision: 10, scale: 2
    end
    def down
      change_column :products, :price, :decimal, precision: 6, scale: 2
    end
  end
end
