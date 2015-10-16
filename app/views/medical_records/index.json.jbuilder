json.array!(@medical_records) do |medical_record|
  json.extract! medical_record, :id, :complaints, :pre_lva, :pre_rva, :diagnosis_id, :eye, :treatment_id, :booked
  json.url medical_record_url(medical_record, format: :json)
end
