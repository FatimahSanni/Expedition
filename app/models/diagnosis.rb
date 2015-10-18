class Diagnosis < ActiveRecord::Base
	validates :name, presence: true
end
