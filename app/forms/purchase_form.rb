class PurchaseForm
  include ActiveModel::Model

  attr_accessor :token, :user_id, :product_id, :postal_code, :municipalities, :building_number, :delivery_id, :purchase_id, :phone_number, :house_number
  validates :token,              presence: true
  #validates :authenticity_token, presence: true
  validates :product_id,         presence: true
  validates :user_id,            presence: true
  validates :municipalities,     presence: true
  validates :delivery_id,        presence: true
  validates :phone_number,       presence: true
  validates :house_number,       presence: true

  validates :postal_code,  format: { with: /\A\d{3}[-]\d{4}\z/, message: "空では登録できません" }
  validates :phone_number, format: { with:  /\A\d{10}$|^\d{11}\z/, message: "ハイフンなしの11桁以内出ないと登録できません"}
  
  def save
    #binding.pry
      
    purchase = Purchase.create(user_id: user_id, product_id: product_id)
    Address.create(postal_code: postal_code, municipalities: municipalities, building_number: building_number, delivery_id: delivery_id, purchase_id: purchase.id, phone_number: phone_number, house_number: house_number)
  end
end