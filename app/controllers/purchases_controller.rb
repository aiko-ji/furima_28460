class PurchasesController < ApplicationController
  before_action :set_product, only: [:index, :create]
  def index
    #binding.pry
    @purchase = Purchase.new
  end

  def create
    #binding.pry
    @purchase = PurchaseForm.new(set_params)
    if @purchase.valid?
       #@purchase.save
       pay_product
       @purchase.save
       return redirect_to root_path
     else
       render 'index'
    end
  end

  private

  def set_params
    params.permit(:token, :authenticity_token, :product_id, :postal_code, :municipalities, :building_number, :delivery_id, :purchase_id, :phone_number, :house_number).merge(user_id: current_user.id)
  end

  def set_product
    @product = Product.find(params[:product_id])
  end


  def purchase_params
    params.permit(:product_id).merge(user_id: current_user.id)
  end

  def pay_product
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    Payjp::Charge.create(
      amount: @product.price,
      card: params[:token],
      currency:'jpy'
    )
  end

end
