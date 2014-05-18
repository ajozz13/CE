json.array!(@trackings) do |tracking|
  json.extract! tracking, :id, :package_id, :times, :action_id
  json.url tracking_url(tracking, format: :json)
end
