json.array!(@listings) do |listing|
  json.extract! listing, :id, :product_id, :ebay_category, :upc, :condition, :item_specifics, :listing_format, :asking_price, :listing_duration, :string, :item_location, :payment_policy, :shipping_details, :package_details, :return_policy
  json.url listing_url(listing, format: :json)
end
