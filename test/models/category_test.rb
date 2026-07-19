require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  test "valid category saves successfully" do
    category = Category.new(name: "Kids")

    assert category.valid?
  end

  test "category without a name is invalid" do
    category = Category.new

    assert_not category.valid?
  end

  test "duplicate category name is invalid" do
    duplicate = Category.new(name: "Men")

    assert_not duplicate.valid?
  end
end