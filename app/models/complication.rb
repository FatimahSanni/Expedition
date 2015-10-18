class Complication < ActiveRecord::Base
	validates :name, presence: true
end
