class AddNotNullConstraintToProductsStockQuantity < ActiveRecord::Migration[8.1]
  def change
    change_column_null :products, :stock_quantity, false
  end
end
