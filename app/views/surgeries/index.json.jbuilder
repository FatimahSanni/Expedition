json.array!(@surgeries) do |surgery|
  json.extract! surgery, :id, :name
  json.url surgery_url(surgery, format: :json)
end
