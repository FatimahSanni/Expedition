class CreateLgas < ActiveRecord::Migration
  def change
    create_table :lgas do |t|
      t.string :name
      t.belongs_to :state, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
