json.array!(@visual_acuities) do |visual_acuity|
  json.extract! visual_acuity, :id, :va
  json.url visual_acuity_url(visual_acuity, format: :json)
end
