class CreateSurgicals < ActiveRecord::Migration
  def change
    create_table :surgicals do |t|
      t.date :surgery_date
      t.belongs_to :surgery, index: true, foreign_key: true
      t.string :eye
      t.string :average_k
      t.string :axial_length
      t.belongs_to :iol_power, index: true, foreign_key: true
      t.belongs_to :iol_insertion, index: true, foreign_key: true
      t.belongs_to :complication, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
