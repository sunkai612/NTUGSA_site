class RemoveClassFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :class, :stringr
  end
end
