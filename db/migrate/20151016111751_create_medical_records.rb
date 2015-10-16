class CreateMedicalRecords < ActiveRecord::Migration
  def change
    create_table :medical_records do |t|
      t.text :complaints
      t.string :pre_lva
      t.string :pre_rva
      t.belongs_to :diagnosis, index: true, foreign_key: true
      t.string :eye
      t.belongs_to :treatment, index: true, foreign_key: true
      t.boolean :booked

      t.timestamps null: false
    end
  end
end
