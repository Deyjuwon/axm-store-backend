class CartsController < ApplicationController
  before_action :authenticate_user!

  def show
    cart = current_user.cart || current_user.create_cart

    render json: {
      id: cart.id,
      items: build_cart_items(cart.cart_items),
      total_price: cart.total_price
    }
  end

  private

  def build_cart_items(cart_items)
    cart_items.includes(:product).map do |item|
      {
        id: item.id,
        product: {
          id: item.product.id,
          name: item.product.name,
          price: item.product.price,
          image_url: item.product.image_url
        },
        quantity: item.quantity,
        subtotal: item.subtotal
      }
    end
  end
end
