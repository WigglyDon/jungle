class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['BA_USER'], password: ENV['BA_PASS']
 
  def show
    @product_count = Product.all.count
    @category_count = Category.all.count
  end
end
