json.array!(@iol_powers) do |iol_power|
  json.extract! iol_power, :id, :power
  json.url iol_power_url(iol_power, format: :json)
end
