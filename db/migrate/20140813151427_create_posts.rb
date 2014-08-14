class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :class
      t.text :content
      t.integer :user_id
      t.integer :comments_count

      t.timestamps
    end
  end
end
