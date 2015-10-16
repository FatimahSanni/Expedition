json.array!(@complications) do |complication|
  json.extract! complication, :id, :name
  json.url complication_url(complication, format: :json)
end
