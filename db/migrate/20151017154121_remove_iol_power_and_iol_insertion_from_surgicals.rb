class RemoveIolPowerAndIolInsertionFromSurgicals < ActiveRecord::Migration
  def change
    remove_reference :surgicals, :iol_power, index: true, foreign_key: true
    remove_reference :surgicals, :iol_insertion, index: true, foreign_key: true
  end
end
