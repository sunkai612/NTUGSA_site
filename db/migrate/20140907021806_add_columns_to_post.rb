class AddColumnsToPost < ActiveRecord::Migration
  def change
    add_column :posts, :is_top?, :boolean, default: false
  end
end
