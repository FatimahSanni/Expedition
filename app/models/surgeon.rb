class Surgeon < ActiveRecord::Base
	validates :name, presence: true
	has_many :surgicals, dependent: :destroy
end
