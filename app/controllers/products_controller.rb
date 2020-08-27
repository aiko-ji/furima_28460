class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :set_product, only: [:show, :edit, :update]

  def new 
    @product = Product.new
  end

  def index
    @products = Product.all.order("created_at DESC")
  end

  def create
    @product = Product.new(product_params)
    binding.pry
    if @product.valid?
       @product.save!
      redirect_to root_path 
    else
      render :new
    end
  end

  def show
  end

  def edit 
  end

  def update
    if @product.update(product_params)
       redirect_to product_path(@product)
      else
        render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to root_path 
  end

  def set_product
   @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:content, :image, :name, :category_id, :condition_id, :price, :description, :shipping_id, :delivery_id, :day_id,).merge(user_id: current_user.id)
  end

end
