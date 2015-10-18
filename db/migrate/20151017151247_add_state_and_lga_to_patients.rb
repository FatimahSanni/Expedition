class AddStateAndLgaToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :state, :string
    add_column :patients, :lga, :string
  end
end
