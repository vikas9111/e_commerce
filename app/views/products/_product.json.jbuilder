json.extract! product, :id, :title, :description, :warranty_detail, :price, :category_id, :created_at, :updated_at
json.url product_url(product, format: :json)
