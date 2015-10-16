json.array!(@iol_insertions) do |iol_insertion|
  json.extract! iol_insertion, :id, :name
  json.url iol_insertion_url(iol_insertion, format: :json)
end
