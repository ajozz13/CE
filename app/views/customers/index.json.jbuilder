json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :address, :city, :state, :zip, :country, :phone, :email
  json.url customer_url(customer, format: :json)
end
