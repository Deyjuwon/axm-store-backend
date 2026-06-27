# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
products = [
  # --- Men ---
  {
    name: "Male Aso Oke",
    description: "Traditional male Aso Oke. A timeless piece of Yoruba heritage.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/men/mpro1.svg"
  },
  {
    name: "Esu Pants",
    description: "Bold and contemporary Esu Pants. A statement piece for the modern man.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/men/mpro2.svg"
  },
  {
    name: "Male Aso Oke Jacket",
    description: "Aso Oke reimagined as a structured jacket. Traditional fabric, modern silhouette.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/men/mpro3.svg"
  },
  {
    name: "AxM Hoodie Tracksuit",
    description: "The AxM signature hoodie tracksuit. Streetwear comfort meets luxury finish.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/men/mpro4a.jpg"
  },
  {
    name: "Tank Top",
    description: "Clean and minimal tank top. Everyday essential.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/men/mpro5a.jpg"
  },
  {
    name: "Black White Striped Leather Jacket",
    description: "High-impact leather jacket in bold black and white stripe.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/men/mpro6a.jpg"
  },
  {
    name: "Jean Jacket",
    description: "Classic denim jacket with an AxM twist. Versatile and durable.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/men/mpro7a.jpg"
  },
  {
    name: "Two Piece Flowery Denim",
    description: "Floral denim co-ord set. Bold print, relaxed fit, full look.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/men/mpro8a.jpg"
  },
  {
    name: "Aso Oke Crop Top",
    description: "Cropped Aso Oke top. Traditional fabric cut for a contemporary look.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/men/mpro9a.jpg"
  },
  {
    name: "Green Tank Top",
    description: "Earthy green tank top. Simple, clean, and versatile.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/men/mpro10a.jpg"
  },
  {
    name: "Green Corduroy Shirt",
    description: "Rich green corduroy shirt. Textured, warm, and distinctive.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/men/mpro11a.jpg"
  },
  {
    name: "Vest and Pant",
    description: "Matching vest and pant set. Sharp, coordinated, effortless.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/men/mpro12a.jpg"
  },

  # --- Women ---
  {
    name: "Female Aso Oke",
    description: "Elegant female Aso Oke. A celebration of Yoruba womanhood.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/women/wpro1.svg"
  },
  {
    name: "Two Piece Aso Oke",
    description: "Matching two-piece Aso Oke set. Coordinated elegance for any occasion.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/women/wpro2a.jpg"
  },
  {
    name: "Two Piece Aso Oke Jort",
    description: "Aso Oke fabric meets the jort silhouette. Traditional meets streetwear.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/women/wpro3a.jpg"
  },
  {
    name: "Aso Oke Jort",
    description: "Statement Aso Oke jort. Bold fabric, relaxed cut.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/women/wpro4a.jpg"
  },
  {
    name: "Aso Oke Mini Skirt",
    description: "Mini skirt in vibrant Aso Oke fabric. Short length, maximum presence.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/women/wpro5a.jpg"
  },
  {
    name: "Aso Oke Gown",
    description: "Floor-length Aso Oke gown. Regal, refined, and unmistakably AXM.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/women/wpro6a.jpg"
  },
  {
    name: "Aso Oke Mini Skirt II",
    description: "Second iteration of the Aso Oke mini skirt. Refined cut, richer fabric.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/women/wpro7a.jpg"
  },
  {
    name: "Female Tank Top",
    description: "Feminine tank top with a clean silhouette. Pairs with everything.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/women/wpro8a.jpg"
  }
]

products.each do |attrs|
  Product.find_or_create_by!(name: attrs[:name]) do |product|
    product.description = attrs[:description]
    product.price = attrs[:price]
    product.stock_quantity = attrs[:stock_quantity]
    product.image_url = attrs[:image_url]
  end
end