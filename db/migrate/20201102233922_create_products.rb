class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.integer :price, null: false
      t.integer :quantity, null: false
      t.references :brand, null: false
      t.references :stock, null: false
      t.references :category
      t.references :shipment_date, null: false
      t.timestamps
    end
  end
end
