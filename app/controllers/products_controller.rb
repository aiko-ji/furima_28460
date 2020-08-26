class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]

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

  def show
    @product = Product.find(params[:id])
    # @product = Product.find(params[:category_id])
    #binding.pry
  end

  def product_params
    params.require(:product).permit(:content, :image, :name, :category_id, :condition_id, :price, :description, :shipping_id, :delivery_id, :day_id,).merge(user_id: current_user.id)
  end

end
