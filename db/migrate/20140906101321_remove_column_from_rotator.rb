class RemoveColumnFromRotator < ActiveRecord::Migration
  def change
    remove_column :rotators, :imageOrder
  end
end
