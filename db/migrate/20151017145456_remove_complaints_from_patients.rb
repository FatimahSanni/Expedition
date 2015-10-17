class RemoveComplaintsFromPatients < ActiveRecord::Migration
  def change
    remove_column :patients, :complaints, :text
  end
end
