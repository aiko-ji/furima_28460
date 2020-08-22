class ProductsController < ApplicationController

  def new 
    @product = Product.new
  end

  def create
  end



  def product_params
    params.require(:product).permit(:content, :image).merge(user_id: current_user.id)
  end

end
