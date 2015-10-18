class RemoveStateFromPatients < ActiveRecord::Migration
  def change
    remove_reference :patients, :state, index: true, foreign_key: true
  end
end
