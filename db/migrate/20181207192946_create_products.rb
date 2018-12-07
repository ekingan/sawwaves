class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :brand_id
      t.string :model, null: false
      t.text :description
      t.integer :product_status
      t.decimal :regular_price
      t.decimal :discount_price
      t.decimal :wholesale_price
      t.boolean :featured, default: false
      t.integer :product_type_id, null: false
      t.boolean :active
      t.index ["brand_id"], name: "index_products_on_brand_id"

      t.timestamps
    end
  end
end
