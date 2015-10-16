class CreateSurgeons < ActiveRecord::Migration
  def change
    create_table :surgeons do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
