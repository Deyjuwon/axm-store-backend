class ProductsController < ApplicationController
  def index
    products = Product.includes(:category)

    if params[:category].present?
      products = products.joins(:category)
                        .where(categories: { name: params[:category] })
    end

    render json: products.as_json(
      include: {
        category: {
          only: [ :name ]
        }
      }
    )
  end

  def show
    product = Product.includes(:category).find(params[:id])

    render json: product.as_json(
      include: {
        category: {
          only: [ :name ]
        }
      }
    )
  end
end
