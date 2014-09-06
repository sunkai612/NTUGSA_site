class AddColumnToRotator < ActiveRecord::Migration
  def change
    remove_column :rotators, :order
    remove_column :rotators, :image
    add_column :rotators, :image_order, :integer
  end
end
