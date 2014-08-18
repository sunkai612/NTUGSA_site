class AddColumnToRotators < ActiveRecord::Migration
  def change
    add_column :rotators, :imageOrder, :integer
  end
end
