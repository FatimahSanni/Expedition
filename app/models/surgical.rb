class Surgical < ActiveRecord::Base
  belongs_to :surgery
  belongs_to :iol_power
  belongs_to :iol_insertion
  belongs_to :complication
  validates :surgery_id, :eye, presence: true
end
