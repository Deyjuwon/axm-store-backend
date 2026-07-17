class ProductsController < ApplicationController
  def index
    if params[:category].present?
      products = Product.eager_load(:category)
                        .where(
                          "LOWER(categories.name) = LOWER(?)",
                          params[:category]
                        )
    else
      products = Product.includes(:category)
    end

    render json: products.as_json(
      include: {
        category: {
          only: [:name]
        }
      }
    )
  end

  def show
    product = Product.includes(:category).find(params[:id])

    render json: product.as_json(
      include: {
        category: {
          only: [:name]
        }
      }
    )
  end
end
