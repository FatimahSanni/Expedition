class Surgeon < ActiveRecord::Base
	validates :name, presence: true
end
