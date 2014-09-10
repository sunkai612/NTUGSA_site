class AddColumnToMember < ActiveRecord::Migration
  def change
    remove_column :members, :order, :integer
    add_column :members, :member_order, :integer
  end
end
