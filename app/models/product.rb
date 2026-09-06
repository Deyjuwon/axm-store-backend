class Product < ApplicationRecord
  belongs_to :category
  has_many :cart_items, dependent: :destroy
  has_many :carts, through: :cart_items

  validates :name, presence: true
  validates :description, presence: true

  validates :price,
            presence: true,
            numericality: { greater_than: 0 }

  validates :image_url, presence: true

  validates :stock_quantity, presence: true,
                           numericality: { greater_than_or_equal_to: 0 }
end
