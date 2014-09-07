class AddColumnToRecord < ActiveRecord::Migration
  def change
    add_column :records, :description, :string
    add_column :records, :organization_id, :integer
    remove_column :records, :eventDate, :string
    add_column :records, :date, :datetime
    add_column :records, :location, :string
  end
end
