class ChangeColumnOfEvent < ActiveRecord::Migration
  def change
    remove_column :events, :organization_id, :integer
    add_column :events, :organization, :string
  end
end
