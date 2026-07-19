require "test_helper"

class ProductTest < ActiveSupport::TestCase
  test "is invalid without a stock quantity" do
    product = Product.new(
      name: "Aso Oke",
      description: "Bold and contemporary Esu Pants.",
      price: 10000,
      image_url: "https://example.com/image.jpg",
      stock_quantity: nil,
      category: categories(:one)
    )

    assert_not product.valid?
    assert product.errors[:stock_quantity].present?
  end

  test "is invalid with a negative stock quantity" do
    product = Product.new(
      name: "Aso Oke",
      description: "Bold and contemporary Esu Pants.",
      price: 10000,
      image_url: "https://example.com/image.jpg",
      stock_quantity: -1,
      category: categories(:two)
    )

    assert_not product.valid?
  end

  test "is valid with a stock quantity of zero" do
    product = Product.new(
      name: "Aso Oke",
      description: "Bold and contemporary Esu Pants.",
      price: 10000,
      image_url: "https://example.com/image.jpg",
      stock_quantity: 0,
      category: categories(:one)
    )

    assert product.valid?
  end
end