require 'rails_helper'

RSpec.describe Product, type: :model do
  describe '商品の情報' do
    before do
      @product = FactoryBot.build(:product)
    end

      it "nameは必須なので空だと登録できない" do
       @product.name = ""
       @product.valid?
       expect(@product.errors.full_messages).to include("Name can't be blank")
      end

      it "category_idは必須なので空だと登録できない" do
       @product. category_id= ""
       @product.valid?
       expect(@product.errors.full_messages).to include("Category can't be blank")
      end

      it "condition_idは必須なので空だと登録できない" do
        @product. commodity_condition_id= ""
        @product.valid?
        expect(@product.errors.full_messages).to include("Commodity condition can't be blank")
      end

      it "priceは必須なので空だと登録できない" do
        @product. price= ""
        @product.valid?
        expect(@product.errors.full_messages).to include("Price can't be blank")
      end

      it "exhibitorは必須なので空だと登録できない" do
        @product. exhibitor= ""
        @product.valid?
        expect(@product.errors.full_messages).to include("Exhibitor can't be blank")
      end

      it "descriptionは必須なので空だと登録できない" do
        @product. description= ""
        @product.valid?
        expect(@product.errors.full_messages).to include("Description can't be blank")
      end

      it "user_idは必須なので空だと登録できない" do
        @product. user_id= ""
        @product.valid?
        expect(@product.errors.full_messages).to include("User can't be blank")
      end

      it "shipping_idは必須なので空だと登録できない" do
        @product. shipping_charges_id= ""
        @product.valid?
        expect(@product.errors.full_messages).to include("Shipping charges can't be blank")
      end

      it "delivery_idは必須なので空だと登録できない" do
        @product. area_of_delivery_id= ""
        @product.valid?
        expect(@product.errors.full_messages).to include("Area of delivery can't be blank")
      end

      it "days_idは必須なので空だと登録できない" do
        @product. days_until_delivery_id= ""
        @product.valid?
        expect(@product.errors.full_messages).to include("Days until delivery can't be blank")
      end

      it "価格が¥300未満だと登録できない" do
        @product. price= 299
        @product.valid?
        expect(@product.errors.full_messages).to include("Price must be greater than or equal to 300")
      end

      it "価格が¥10,000,000以上だと登録できない" do
        @product. price= 10000000
        @product.valid?
        expect(@product.errors.full_messages).to include("Price must be less than 9999999")
      end
  end
end