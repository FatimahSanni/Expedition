class AddPostRvaAndPostLvaToSurgicals < ActiveRecord::Migration
  def change
    add_column :surgicals, :post_rva, :string
    add_column :surgicals, :post_lva, :string
  end
end
