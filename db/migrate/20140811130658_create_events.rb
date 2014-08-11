class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :image
      t.datetime :eventDate
      t.text :content
      t.timestamps
    end
  end
end
