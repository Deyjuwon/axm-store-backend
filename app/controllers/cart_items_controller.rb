class CartItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cart_item, only: [ :update, :destroy ]

  def create
    cart = current_user.cart || current_user.create_cart
    product = Product.find(params[:product_id])

    result = CartItems::AddToCart.new(cart, product, cart_item_quantity).call

    if result[:ok]
      status = result[:action] == :created ? :created : :ok
      render json: result[:cart_item], status: status
    else
      render json: { error: result[:error] }, status: :unprocessable_entity
    end
  end

  def update
    result = CartItems::UpdateCartItem.new(@cart_item, cart_item_quantity).call

    if result[:ok]
      if result[:action] == :removed
        render json: { message: "Cart item removed successfully." }, status: :ok
      else
        render json: result[:cart_item], status: :ok
      end
    else
      render json: { error: result[:error] }, status: :unprocessable_entity
    end
  end

  def destroy
    CartItems::RemoveCartItem.new(@cart_item).call

    render json: { message: "Cart item removed successfully." }, status: :ok
  end

  private

  def set_cart_item
    @cart_item = current_user.cart.cart_items.find(params[:id])
  end

  def cart_item_quantity
    params.require(:quantity).to_i
  end
end
