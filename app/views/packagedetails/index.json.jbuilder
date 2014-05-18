json.array!(@packagedetails) do |packagedetail|
  json.extract! packagedetail, :id, :tracking, :length, :width, :height, :piece_weight
  json.url packagedetail_url(packagedetail, format: :json)
end
