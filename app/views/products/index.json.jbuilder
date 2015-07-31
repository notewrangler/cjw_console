json.array!(@products) do |product|
  json.extract! product, :id, :title, :description, :purchase_date, :purchase_source, :purchase_price, :store_category
  json.url product_url(product, format: :json)
end
