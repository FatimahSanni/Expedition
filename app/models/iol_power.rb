class IolPower < ActiveRecord::Base
	has_many :surgicals, dependent: :destroy
	validates :power, presence: true
end
