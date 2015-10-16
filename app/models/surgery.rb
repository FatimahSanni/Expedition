class Surgery < ActiveRecord::Base
	validates :name, presence: true
end
