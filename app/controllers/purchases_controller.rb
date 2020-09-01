class PurchasesController < ApplicationController
  before_action :set_product, only: [:index, :create]
  before_action :soldout_product, only: [:index]
  before_action :authenticate_user!, only: [:index]
  before_action :product_user, only: [:index]

  def index
    @purchase = Purchase.new
    # if user_signed_in? && current_user.id == @purchases_product.id
    #  else
    #   redirect_to index
    # end
  end

  def create
    @purchase = PurchaseForm.new(set_params)
    if @purchase.valid?
       pay_product
       @purchase.save
       return redirect_to root_path
     else
       render 'index'
    end
  end

  private

  def set_params
    params.permit(:token, :product_id, :postal_code, :municipalities, :building_number, :delivery_id, :purchase_id, :phone_number, :house_number).merge(user_id: current_user.id)
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

  def soldout_product
    if  current_user.id == @purchases_product.id
     redirect_to index
    end
  end

  def product_user
    if current_user.id == @product_user.id
      redirect_to index
    end
  end
end
