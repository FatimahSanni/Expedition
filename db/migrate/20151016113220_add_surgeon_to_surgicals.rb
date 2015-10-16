class AddSurgeonToSurgicals < ActiveRecord::Migration
  def change
    add_reference :surgicals, :surgeon, index: true, foreign_key: true
  end
end
