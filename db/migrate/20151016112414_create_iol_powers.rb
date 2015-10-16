class CreateIolPowers < ActiveRecord::Migration
  def change
    create_table :iol_powers do |t|
      t.string :power

      t.timestamps null: false
    end
  end
end
