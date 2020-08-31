require 'rails_helper'

RSpec.describe Product, type: :model do
  describe '商品の情報' do
    before do
      @user = FactoryBot.create(:user)
      @product = FactoryBot.build(:product,user_id: @user.id)
    end

      it "nameは必須なので空だと登録できない" do
       @product.name = ""
       @product.valid?
       expect(@product.errors.full_messages).to include("Name can't be blank")
      end

      it "category_idは必須なので空だと登録できない" do
       @product.category_id= ""
       @product.valid?
       expect(@product.errors.full_messages).to include("Category 項目をお選び下さい")
      end

      it "condition_idは必須なので空だと登録できない" do
        @product.condition_id= ""
        @product.valid?
        expect(@product.errors.full_messages).to include("Condition 項目をお選び下さい")
      end

      it "priceは必須なので空だと登録できない" do
        @product.price= ""
        @product.valid?
        expect(@product.errors.full_messages).to include("Price can't be blank")
      end

      it "descriptionは必須なので空だと登録できない" do
        @product.description= ""
        @product.valid?
        expect(@product.errors.full_messages).to include("Description can't be blank")
      end


      it "shipping_idは必須なので空だと登録できない" do
        @product.shipping_id= ""
        @product.valid?
        expect(@product.errors.full_messages).to include("Shipping 項目をお選び下さい")
      end

      it "delivery_idは必須なので空だと登録できない" do
        @product.delivery_id= ""
        @product.valid?
        expect(@product.errors.full_messages).to include("Delivery 項目をお選び下さい")
      end

      it "day_idは必須なので空だと登録できない" do
        @product.day_id= ""
        @product.valid?
        expect(@product.errors.full_messages).to include("Day 項目をお選び下さい")
      end

      it "価格が¥300未満だと登録できない" do
        @product.price= 299
        @product.valid?
        expect(@product.errors.full_messages).to include("Price must be greater than or equal to 300")
      end

      it "価格が¥10,000,000以上だと登録できない" do
        @product.price= 10000000
        @product.valid?
        expect(@product.errors.full_messages).to include("Price must be less than 9999999")
      end
  end
end