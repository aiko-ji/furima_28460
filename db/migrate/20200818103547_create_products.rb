class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|

      t.string  :name,                   null: false
      t.integer :category_id,            null: false
      t.integer :commodity_condition_id, null: false
      t.integer :price,                  null: false
      t.text    :description,            null: false
      t.integer :user_id,                null: false, foreign_key: true
      t.integer :shipping_charges_id,    null: false
      t.integer :area_of_delivery_id,    null: false
      t.integer :days_until_delivery_id, null: false

      
      t.timestamps
    end
  end
end
      