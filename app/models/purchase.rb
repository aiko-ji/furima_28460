class Purchase < ApplicationRecord

  belongs_to :product
  belongs_to :user
  has_one :address  

  validates :user_id,    presence: true
  validates :product_id, presence: true
end
