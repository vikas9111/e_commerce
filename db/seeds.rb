# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Define an array of attributes with their associated categories (types)
attribute_names = [
  'Brand',
  'Model',
  'SKU',
  'Color',
  'Size',
  'Material',
  'Weight',
  'Dimensions',
  'Capacity',
  'Power Source',
  'Condition',
  'Compatibility',
  'Fragrance',
  'Type',
  'Display Size',
  'Resolution',
  'In the Box',
  'Care Instructions',
  'Gift Wrapping'
]


default_categories =  {
  "Electronics": [
      "Mobile Phones & Accessories",
      "Laptops & Computers",
      "Audio & Headphones",
      "Cameras & Accessories"
  ],
  "Fashion": [
      "Men's Clothing",
      "Women's Clothing",
      "Footwear",
      "Watches"
  ],
  "Home & Furniture": [
      "Furniture",
      "Home Decor",
      "Kitchen & Dining",
      "Bed & Bath"
  ],
  "Appliances": [
      "Refrigerators & Washing Machines",
      "Air Conditioners",
      "Microwaves & Ovens",
      "Home Appliances"
  ],
  "Beauty & Personal Care": [
      "Skincare",
      "Haircare",
      "Makeup & Cosmetics",
      "Grooming Appliances"
  ],
  "Toys & Games": [
      "Action Figures",
      "Board Games",
      "Puzzles",
      "Educational Toys"
  ],
  "Sports & Fitness": [
      "Sports Equipment",
      "Fitness Accessories",
      "Outdoor & Adventure Gear",
      "Sports Apparel"
  ],
  "Baby & Kids": [
      "Baby Care",
      "Baby Clothing & Accessories",
      "Kids' Footwear",
      "Baby Gear & Nursery"
  ],
  "Jewelry": [
      "Rings & Earrings",
      "Necklaces & Pendants",
      "Bracelets & Bangles",
      "Jewelry Sets"
  ],
  "Pet Supplies": [
      "Pet Food & Treats",
      "Pet Toys & Accessories",
      "Pet Grooming"
  ],
  "Art & Crafts": [
      "Painting Supplies",
      "Drawing & Sketching",
      "Craft Kits & Materials",
      "Scrapbooking"
  ],
  "Gifts & Occasions": [
      "Personalized Gifts",
      "Gift Cards",
      "Party Supplies",
      "Festive Decorations"
  ]
}


default_categories.each do |category_name, sub_category_names|
  parent_category = Category.create(title: category_name)
  if sub_category_names.present?
    sub_category_names.each do |name|
      Category.create(title: category_name, parent_id: parent_category.id)
    end
  end
end

attribute_names.each do |name|
  AttributeDefinition.create(name: name)
end