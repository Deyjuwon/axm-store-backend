class CartItemsController < ApplicationController
  before_action :authenticate_user!

    def create
      cart = current_user.cart || current_user.create_cart
      product = Product.find(params[:product_id])

      cart_item = cart.cart_items.find_by(product: product)

      if cart_item
        new_quantity = cart_item.quantity + cart_item_quantity

        if new_quantity > product.stock_quantity
          return render json: {
            error: "Not enough stock available"
          }, status: :unprocessable_entity
        end

        cart_item.update!(quantity: new_quantity)
      else
        if cart_item_quantity > product.stock_quantity
          return render json: {
            error: "Not enough stock available"
          }, status: :unprocessable_entity
        end

        cart_item = cart.cart_items.create!(
          product: product,
          quantity: cart_item_quantity
        )
      end

      render json: cart_item, status: :created
    end

  def update
    cart_item = current_user.cart.cart_items.find(params[:id])
    product = cart_item.product
    quantity = cart_item_quantity

    if quantity > product.stock_quantity
      return render json: {
        error: "Not enough stock available"
      }, status: :unprocessable_entity
    end

    if quantity == 0
      cart_item.destroy!
      return render json: {
        message: "Cart item removed successfully."
      }, status: :ok
    end

    cart_item.update!(quantity: quantity)

    render json: cart_item, status: :ok
  end

  def destroy
    cart_item = current_user.cart.cart_items.find(params[:id])

    cart_item.destroy!

    render json: {
      message: "Cart item removed successfully."
    }, status: :ok
  end

  private

  def cart_item_quantity
    params.require(:quantity).to_i
  end
end
