json.array!(@surgeons) do |surgeon|
  json.extract! surgeon, :id, :name
  json.url surgeon_url(surgeon, format: :json)
end
