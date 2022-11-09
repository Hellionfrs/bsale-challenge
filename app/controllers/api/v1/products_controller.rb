class Api::V1::ProductsController < ApplicationController
  before_action :set_product, only: [:show]
  def index
    @products = Product.all
    # render json: {products: Product.all}
    render json: @products
  end

  def show 
    render json: @product
  end

  def set_product
    @product = Product.find(params[:id])
  end
end