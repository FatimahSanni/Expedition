class CreateVisualAcuities < ActiveRecord::Migration
  def change
    create_table :visual_acuities do |t|
      t.string :va

      t.timestamps null: false
    end
  end
end
