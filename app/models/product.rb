class Product < ApplicationRecord

      has_one_attached :image
      belongs_to :user

   with_options presence: true do
      validates :name
      validates :category_id
      validates :commodity_condition_id
      validates :price
      validates :description
      validates :user_id
      validates :shipping_charges_id
      validates :area_of_delivery_id
      validates :days_until_delivery_id
   end

      validates :price, numericality: { greater_than_or_equal_to: 300,less_than: 9999999}
      
end
