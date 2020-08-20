require 'rails_helper'
describe Product do
  before do
    @product = FactoryBot.build(:product)
  end

  describe '#create' do
   it "nameとcategory_idとcommodity_condition_idとpriceとexhibitorとdescriptionと
   user_idとshipping_charges_idとvalidatesとdays_until_delivery_idとdays_until_delivery_id" do
      expect(@user).to be_valid
    end

   it "nameは必須なので空だと登録できない" do
     @product.name = ""
     @product.valid?
     expect(@product.errors.full_messages).to include("Name 空欄ままでは登録できません。")
   end

   it "category_idは必須なので空だと登録できない" do
    @product. category_id= ""
    @product.valid?
    expect(@product.errors.full_messages).to include("category_id 空欄ままでは登録できません。")
  end

  it "commodity_condition_idは必須なので空だと登録できない" do
    @product. category_id= ""
    @product.valid?
    expect(@product.errors.full_messages).to include("category_id 空欄ままでは登録できません。")
  end
