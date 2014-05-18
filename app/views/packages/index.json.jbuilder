json.array!(@packages) do |package|
  json.extract! package, :id, :tracking, :customer_id, :weight, :value, :sender_name, :sender_address, :sender_city, :sender_state, :sender_country, :sender_phone, :sender_email
  json.url package_url(package, format: :json)
end
