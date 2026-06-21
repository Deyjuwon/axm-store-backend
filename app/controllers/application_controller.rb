class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound do
    render json: {
      error: "Product not found"
    }, status: :not_found
  end
end
