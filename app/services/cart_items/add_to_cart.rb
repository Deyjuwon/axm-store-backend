module CartItems
  class AddToCart
    def initialize(cart, product, quantity)
      @cart = cart
      @product = product
      @quantity = quantity
    end

    def call
      cart_item = @cart.cart_items.find_by(product: @product)

      if cart_item
        update_existing(cart_item)
      else
        create_new
      end
    end

    private

    def update_existing(cart_item)
      new_quantity = cart_item.quantity + @quantity

      return out_of_stock unless new_quantity <= @product.stock_quantity

      cart_item.update!(quantity: new_quantity)
      { ok: true, cart_item: cart_item, action: :updated }
    end

    def create_new
      return out_of_stock unless @quantity <= @product.stock_quantity

      cart_item = @cart.cart_items.create!(
        product: @product,
        quantity: @quantity
      )
      { ok: true, cart_item: cart_item, action: :created }
    end

    def out_of_stock
      { ok: false, error: "Not enough stock available" }
    end
  end
end
