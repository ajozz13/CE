json.array!(@manifests) do |manifest|
  json.extract! manifest, :id, :origin, :destination, :notes, :total_weight
  json.url manifest_url(manifest, format: :json)
end
