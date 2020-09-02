class Product < ApplicationRecord
   extend ActiveHash::Associations::ActiveRecordExtensions

      has_one :purchase

      has_one_attached :image
      belongs_to :user
      belongs_to_active_hash :category
      belongs_to_active_hash :condition
      belongs_to_active_hash :shipping
      belongs_to_active_hash :delivery
      belongs_to_active_hash :day

# IDが０番目の奴はバリデーションをかけて保存させないようにする
   with_options presence: true do
      validates :name
      validates :price
      validates :description
      validates :user_id
      validates :image
   end

      validates :category_id,  numericality: { other_than: 0, message: "項目をお選び下さい" }
      validates :condition_id, numericality: { other_than: 0, message: "項目をお選び下さい" }
      validates :shipping_id,  numericality: { other_than: 0, message: "項目をお選び下さい" }
      validates :delivery_id,  numericality: { other_than: 0, message: "項目をお選び下さい" }
      validates :day_id,       numericality: { other_than: 0, message: "項目をお選び下さい" }
   
      validates :price, numericality: { greater_than_or_equal_to: 300,less_than: 9999999}
      
end
