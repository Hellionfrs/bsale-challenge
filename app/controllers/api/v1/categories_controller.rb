class Api::V1::CategoriesController < ApplicationController
  before_action :set_category, only: [:show]
  def index
    @categories = Category.all
    # render json: {products: Product.all}
    render json: @categories
  end

  def show 
    render json: @product
  end

  def set_category
    @product = Category.find(params[:id])
  end
end