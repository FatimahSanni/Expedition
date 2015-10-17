class State < ActiveRecord::Base
	has_many :lgas, dependent: :destroy
	has_many :patients, dependent: :destroy
	validates :name, presence: true
	paginates_per 10
end
