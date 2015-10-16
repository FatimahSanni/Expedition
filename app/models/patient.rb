class Patient < ActiveRecord::Base
  belongs_to :state
  belongs_to :lga
  validates :first_name, :surname, :age, :gender, :state_id, :lga_id, presence: true
  Gender = %w(Male Female)
end
