class CreateRotators < ActiveRecord::Migration
  def change
    create_table :rotators do |t|
      t.string :image
      t.string :title
      t.datetime :eventDate
      t.integer :order
      t.string :link

      t.timestamps
    end
  end
end
