class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @products = @category.products
    @order_item = current_order.order_items.new
  end
end
