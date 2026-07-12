
men = Category.find_or_create_by!(name: "Men")
women = Category.find_or_create_by!(name: "Women")

products = [
  # --- Men ---
  {
    name: "Male Aso Oke",
    description: "Traditional male Aso Oke. A timeless piece of Yoruba heritage.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/men/mpro1.svg",
    category: men
  },
  {
    name: "Esu Pants",
    description: "Bold and contemporary Esu Pants. A statement piece for the modern man.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/men/mpro2.svg",
    category: men
  },
  {
    name: "Male Aso Oke Jacket",
    description: "Aso Oke reimagined as a structured jacket. Traditional fabric, modern silhouette.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/men/mpro3.svg",
    category:  men
  },
  {
    name: "AxM Hoodie Tracksuit",
    description: "The AxM signature hoodie tracksuit. Streetwear comfort meets luxury finish.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/men/mpro4a.jpg",
    category:  men
  },
  {
    name: "Tank Top",
    description: "Clean and minimal tank top. Everyday essential.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/men/mpro5a.jpg",
    category:  men
  },
  {
    name: "Black White Striped Leather Jacket",
    description: "High-impact leather jacket in bold black and white stripe.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/men/mpro6a.jpg",
    category:  men
  },
  {
    name: "Jean Jacket",
    description: "Classic denim jacket with an AxM twist. Versatile and durable.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/men/mpro7a.jpg",
    category:  men
  },
  {
    name: "Two Piece Flowery Denim",
    description: "Floral denim co-ord set. Bold print, relaxed fit, full look.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/men/mpro8a.jpg",
    category:  men
  },
  {
    name: "Aso Oke Crop Top",
    description: "Cropped Aso Oke top. Traditional fabric cut for a contemporary look.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/men/mpro9a.jpg",
    category:  men
  },
  {
    name: "Green Tank Top",
    description: "Earthy green tank top. Simple, clean, and versatile.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/men/mpro10a.jpg",
    category:  men
  },
  {
    name: "Green Corduroy Shirt",
    description: "Rich green corduroy shirt. Textured, warm, and distinctive.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/men/mpro11a.jpg",
    category:  men
  },
  {
    name: "Vest and Pant",
    description: "Matching vest and pant set. Sharp, coordinated, effortless.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/men/mpro12a.jpg",
    category:  men
  },

  # --- Women ---
  {
    name: "Female Aso Oke",
    description: "Elegant female Aso Oke. A celebration of Yoruba womanhood.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/women/wpro1.svg",
    category:  women
  },
  {
    name: "Two Piece Aso Oke",
    description: "Matching two-piece Aso Oke set. Coordinated elegance for any occasion.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/women/wpro2a.jpg",
    category:  women
  },
  {
    name: "Two Piece Aso Oke Jort",
    description: "Aso Oke fabric meets the jort silhouette. Traditional meets streetwear.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/women/wpro3a.jpg",
    category:  women
  },
  {
    name: "Aso Oke Jort",
    description: "Statement Aso Oke jort. Bold fabric, relaxed cut.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/women/wpro4a.jpg",
    category:  women
  },
  {
    name: "Aso Oke Mini Skirt",
    description: "Mini skirt in vibrant Aso Oke fabric. Short length, maximum presence.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/women/wpro5a.jpg",
    category:  women
  },
  {
    name: "Aso Oke Gown",
    description: "Floor-length Aso Oke gown. Regal, refined, and unmistakably AXM.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/women/wpro6a.jpg",
    category:  women
  },
  {
    name: "Aso Oke Mini Skirt II",
    description: "Second iteration of the Aso Oke mini skirt. Refined cut, richer fabric.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/women/wpro7a.jpg",
    category:  women
  },
  {
    name: "Female Tank Top",
    description: "Feminine tank top with a clean silhouette. Pairs with everything.",
    price: 100000.00,
    stock_quantity: 10,
    image_url: "/products/women/wpro8a.jpg",
    category:  women
  }
]

products.each do |attrs|
  Product.create!(attrs)
end
