class AddPatientToSurgicals < ActiveRecord::Migration
  def change
    add_reference :surgicals, :patient, index: true, foreign_key: true
  end
end
