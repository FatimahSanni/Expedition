class Complication < ActiveRecord::Base
	has_many :surgicals, dependent: :destroy
	validates :name, presence: true
end
