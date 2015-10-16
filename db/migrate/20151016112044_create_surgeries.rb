class CreateSurgeries < ActiveRecord::Migration
  def change
    create_table :surgeries do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
