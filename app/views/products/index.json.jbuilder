json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :category, :price, :initial_stock, :current_stock
  json.url product_url(product, format: :json)
end
