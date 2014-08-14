class AddTypeNameToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :type_name, :string
  end
end
