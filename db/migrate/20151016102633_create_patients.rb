class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :surname
      t.string :other_names
      t.string :gender
      t.string :age
      t.string :address
      t.string :phone
      t.belongs_to :state, index: true, foreign_key: true
      t.belongs_to :lga, index: true, foreign_key: true
      t.string :intervention_state
      t.string :next_of_kin
      t.string :relationship
      t.string :nok_phone
      t.string :nok_address
      t.text :complaints

      t.timestamps null: false
    end
  end
end
