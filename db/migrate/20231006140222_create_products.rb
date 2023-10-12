class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.jsonb :description, default: {}
      t.string :warranty_detail
      t.integer :price
      t.string :product_images, array: true, default: []
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
