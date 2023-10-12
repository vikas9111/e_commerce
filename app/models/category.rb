class Category < ApplicationRecord
  has_many :products

  belongs_to :parent_category, class_name: "Category", optional: true
  has_many :sub_categories, class_name: "Category", foreign_key: "parent_id"
end
