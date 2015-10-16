class Diagnosis < ActiveRecord::Base
	has_many :medical_records, dependent: :destroy
	validates :name, presence: true
end
