class Product < ApplicationRecord
   extend ActiveHash::Associations::ActiveRecordExtensions

      has_one_attached :image
      belongs_to :user
      belongs_to_active_hash :category
      belongs_to_active_hash :condition
      belongs_to_active_hash :shipping
      belongs_to_active_hash :delivery
      belongs_to_active_hash :day


   with_options presence: true do
      validates :name
      validates :category_id
      validates :condition_id
      validates :price
      validates :description
      validates :user_id
      validates :shipping_id
      validates :delivery_id
      validates :day_id
   end

      validates :price, numericality: { greater_than_or_equal_to: 300,less_than: 9999999}
      
end
