class Treatment < ActiveRecord::Base
	has_many :surgical, dependent: :destroy
end
