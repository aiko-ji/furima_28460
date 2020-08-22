class Product < ApplicationRecord

      has_one_attached :image

   with_options presence: true do
      validates :name
      validates :category_id
      validates :commodity_condition_id
      validates :price
      validates :exhibitor
      validates :description
      validates :user_id
      validates :shipping_charges_id
      validates :area_of_delivery_id
      validates :days_until_delivery_id
   end


end
