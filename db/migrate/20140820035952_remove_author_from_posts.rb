class RemoveAuthorFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :Author, :string
  end
end
