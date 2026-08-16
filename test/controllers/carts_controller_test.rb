require "test_helper"

class CartsControllerTest < ActionDispatch::IntegrationTest
  test "should require authentication" do
    get "/cart"

    assert_response :unauthorized
  end
end
