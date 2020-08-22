class ProductsController < ApplicationController

  def index
    @product = Product.all
  end

  def new 
    @product = Product.new
  end

  def create
  end

  def edit
  end

  def product_params
    params.require(:product).permit(:content, :image).merge(user_id: current_user.id)
  end

end
