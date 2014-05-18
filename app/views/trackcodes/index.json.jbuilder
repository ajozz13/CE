json.array!(@trackcodes) do |trackcode|
  json.extract! trackcode, :id, :description
  json.url trackcode_url(trackcode, format: :json)
end
