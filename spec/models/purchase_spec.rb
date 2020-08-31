require 'rails_helper'

RSpec.describe Purchase, type: :model do
  describe '商品購入情報' do
    before do
      # @user = FactoryBot.build(:user)
      # @product = FactoryBot.build(:product)
      @purchase= FactoryBot.build(:purchase)
    end

    it "postal_codeは必須なのでありハイフンが無いと登録できない" do
      @purchase.postal_code = 1234567
      @purchase.valid?
      expect(@purchase.errors.full_messages).to include("Postal code can't be blank")
     end

     it "delivery_idは必須なので空だと登録できない" do
      @purchase.delivery_id = ""
      @purchase.valid?
      expect(@purchase.errors.full_messages).to include("Delivery id can't be blank")
     end

     it "municipalitiesは必須なので空だと登録できない" do
      @purchase.municipalities = ""
      @purchase.valid?
      expect(@purchase.errors.full_messages).to include("Municipalities can't be blank")
     end

     it "house_numbeは必須なので空だと登録できない" do
      @purchase.house_numbe = ""
      @purchase.valid?
      expect(@purchase.errors.full_messages).to include("House numbe can't be blank")
     end

     it "phone_numberはハイフンは不要で11桁以内出ないと登録できない" do
      @purchase.phone_number = "123456-123456"
      @purchase.valid?
      expect(@purchase.errors.full_messages).to include("Phone_number can't be blank")
     end

     it "token情報は必須なので空だと登録できない" do
      @purchase.token = "123456-123456"
      @purchase.valid?
      expect(@purchase.errors.full_messages).to include("Token can't be blank")
     end

     it "user_idは必須です" do
      @purchase.user_id = ""
      @purchase.valid?
      expect(@purchase.errors.full_messages).to include("User id can't be blank")
     end

     it "product_idは必須です" do
      @purchase.product_id = ""
      @purchase.valid?
      expect(@purchase.errors.full_messages).to include("Product id can't be blank")
     end
  end
end
    