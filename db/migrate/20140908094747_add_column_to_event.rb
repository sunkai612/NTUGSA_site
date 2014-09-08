class AddColumnToEvent < ActiveRecord::Migration
  def change
    remove_column :events, :image, :string
    remove_column :events, :eventDate, :datetime
    add_column :events, :event_date, :datetime
    add_column :events, :description, :string
    add_column :events, :organization_id, :integer
    add_column :events, :location, :string
    add_column :events, :link, :string
    add_column :events, :video, :string
    add_column :events, :is_gsa, :boolean
  end
end
