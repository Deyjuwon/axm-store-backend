module CartItems
  class UpdateCartItem
    def initialize(cart_item, quantity)
      @cart_item = cart_item
      @quantity = quantity
    end

    def call
      return remove if @quantity == 0

      product = @cart_item.product
      return out_of_stock if @quantity > product.stock_quantity

      @cart_item.update!(quantity: @quantity)
      { ok: true, action: :updated, cart_item: @cart_item }
    end

    private

    def remove
      @cart_item.destroy!
      { ok: true, action: :removed }
    end

    def out_of_stock
      { ok: false, error: "Not enough stock available" }
    end
  end
end
