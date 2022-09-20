class CreateProductDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :product_details do |t|
      t.string :name
      t.decimal :price
      t.string :description

      t.timestamps
    end
  end
end
