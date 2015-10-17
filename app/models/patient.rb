class Patient < ActiveRecord::Base
  belongs_to :state
  belongs_to :lga
  has_many :medical_records, dependent: :destroy
  has_many :surgicals, dependent: :destroy
  validates :first_name, :surname, :age, :gender, :state_id, :intervention_state, presence: true
  Gender = %w(Male Female)

  def self.to_csv
    attributes = %w{full_name gender age phone state town created_at}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |patient|
        csv << [patient.full_name, patient.gender, patient.age, patient.phone, patient.state.name, patient.town, patient.intervention_state]
      end
    end
  end

  def full_name
  	self.first_name+ " "+ self.other_names + " " + self.surname
  end
end
