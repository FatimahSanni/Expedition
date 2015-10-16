json.array!(@surgicals) do |surgical|
  json.extract! surgical, :id, :surgery_date, :surgery_id, :eye, :average_k, :axial_length, :iol_power_id, :iol_insertion_id, :complication_id
  json.url surgical_url(surgical, format: :json)
end
