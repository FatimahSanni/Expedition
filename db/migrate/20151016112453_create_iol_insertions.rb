class CreateIolInsertions < ActiveRecord::Migration
  def change
    create_table :iol_insertions do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
