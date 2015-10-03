class ProductsController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @products = @category.products unless @category.nil?
  end

  def show
    @product = Product.find(params[:id])
  end
end
