class ProductsController < ApplicationController

  def new 
    #binding.pry
    @product = Product.new
  end

  def index
    @products = Product.all.order("created_at DESC")
  end

  def create
    @product = Product.new(product_params)
    if @product.valid?
       @product.save!
      redirect_to root_path 
    else
      render :new
    end
  end



  def product_params
    params.require(:product).permit(:content, :image, :name, :category_id, :commodity_condition_id, :price, :description, :shipping_charges_id, :area_of_delivery_id, :days_until_delivery_id,).merge(user_id: current_user.id)
  end

end
