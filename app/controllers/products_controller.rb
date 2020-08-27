class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]

  def new 
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
  end

  def edit 
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to product_path(@product)
    if @product.valid?
       @product.update
      else
        render :edit
    end
  end


  def product_params
    params.require(:product).permit(:content, :image, :name, :category_id, :condition_id, :price, :description, :shipping_id, :delivery_id, :day_id,).merge(user_id: current_user.id)
  end

end
