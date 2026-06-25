require "rails_helper"

RSpec.describe Product, type: :model do
  describe "validations" do
    it "is invalid without a stock quantity" do
      product = Product.new(
        name: "Aso Oke",
        description: "Bold and contemporary Esu Pants.",
        price: 10000,
        image_url: "https://example.com/image.jpg",
        stock_quantity: nil
      )

      expect(product).not_to be_valid
      expect(product.errors[:stock_quantity]).to be_present
    end

    it "is invalid with a negative stock quantity" do
      product = Product.new(
        name: "Aso Oke",
        description: "Bold and contemporary Esu Pants.",
        price: 10000,
        image_url: "https://example.com/image.jpg",
        stock_quantity: -1
      )

      expect(product).not_to be_valid
    end

    it "is valid with a stock quantity of zero" do
      product = Product.new(
        name: "Aso Oke",
        description: "Bold and contemporary Esu Pants.",
        price: 10000,
        image_url: "https://example.com/image.jpg",
        stock_quantity: 0
      )

      expect(product).to be_valid
    end
  end
end