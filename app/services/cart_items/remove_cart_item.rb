module CartItems
  class RemoveCartItem
    def initialize(cart_item)
      @cart_item = cart_item
    end

    def call
      @cart_item.destroy!
      { ok: true, action: :removed }
    end
  end
end
