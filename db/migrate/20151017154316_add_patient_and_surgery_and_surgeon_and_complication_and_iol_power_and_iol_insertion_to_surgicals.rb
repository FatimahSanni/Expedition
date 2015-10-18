class AddPatientAndSurgeryAndSurgeonAndComplicationAndIolPowerAndIolInsertionToSurgicals < ActiveRecord::Migration
  def change
    add_column :surgicals, :patient, :string
    add_column :surgicals, :surgery, :string
    add_column :surgicals, :surgeon, :string
    add_column :surgicals, :complication, :string
    add_column :surgicals, :iol_power, :string
    add_column :surgicals, :iol_insertion, :string
  end
end
