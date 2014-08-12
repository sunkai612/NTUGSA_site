class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :organization_id
      t.string :name
      t.string :photo
      t.text :intro
      t.integer :order

      t.timestamps
    end
  end
end
