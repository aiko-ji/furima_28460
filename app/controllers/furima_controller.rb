class FurimaController < ApplicationController

  def index
    @furima = furima.all
  end

  def new
    @furima = furima.new
  end
end
