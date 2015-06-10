class PurchasesController < ApplicationController

	 def add_to_cart
    render json: params
    @product = Product.find(params[:product_id])
    @user = current_user
    @purchase = Purchase.new(user: @user, product: @product)
    p @purchase
  end
end
