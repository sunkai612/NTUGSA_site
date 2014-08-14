class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :boards_count
      t.integer :posts_count
      t.integer :comments_count

      t.timestamps
    end
  end
end
