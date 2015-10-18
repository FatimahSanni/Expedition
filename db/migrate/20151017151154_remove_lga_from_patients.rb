class RemoveLgaFromPatients < ActiveRecord::Migration
  def change
    remove_reference :patients, :lga, index: true, foreign_key: true
  end
end
