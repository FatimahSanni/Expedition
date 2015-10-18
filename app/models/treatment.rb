class Treatment < ActiveRecord::Base
	validates :name, presence: true
end
