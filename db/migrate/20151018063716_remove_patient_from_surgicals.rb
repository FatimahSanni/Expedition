class RemovePatientFromSurgicals < ActiveRecord::Migration
  def change
    remove_column :surgicals, :patient, :string
  end
end
