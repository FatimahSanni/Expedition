class AddTownToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :town, :string
  end
end
