json.array!(@patients) do |patient|
  json.extract! patient, :id, :first_name, :surname, :other_names, :gender, :age, :address, :phone, :state_id, :lga_id, :intervention_state, :next_of_kin, :relationship, :nok_phone, :nok_address
  json.url patient_url(patient, format: :json)
end
