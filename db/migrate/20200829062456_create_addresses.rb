class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.integer :postal_code,    null: false
      t.string  :municipalities, null: false
      t.string  :building_number
      t.integer :delivery_id,    null: false
      t.integer :purchase_id,    null: false, foreign_key: true
      t.string  :phone_number,   null: false
      t.integer :house_number,   null: false

      t.timestamps
    end
  end
end
