class RemovePatientAndSurgeryAndSurgeonAndComplicationFromSurgicals < ActiveRecord::Migration
  def change
    remove_reference :surgicals, :patient, index: true, foreign_key: true
    remove_reference :surgicals, :surgery, index: true, foreign_key: true
    remove_reference :surgicals, :surgeon, index: true, foreign_key: true
    remove_reference :surgicals, :complication, index: true, foreign_key: true
  end
end
