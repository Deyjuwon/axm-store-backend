class CartsController < ApplicationController
  before_action :authenticate_user!

  def show
    cart = current_user.cart || current_user.create_cart

    render json: {
      id: cart.id,
      items: cart.cart_items.includes(:product).map do |item|
        {
          id: item.id,
          product: {
            id: item.product.id,
            name: item.product.name,
            price: item.product.price,
            image_url: item.product.image_url
          },
          quantity: item.quantity,
          subtotal: item.product.price * item.quantity
        }
      end,
      total_price: cart.cart_items.sum do |item|
        item.product.price * item.quantity
      end
    }
  end
end
