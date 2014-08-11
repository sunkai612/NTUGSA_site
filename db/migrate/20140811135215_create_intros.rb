class CreateIntros < ActiveRecord::Migration
  def change
    create_table :intros do |t|
      t.string :title
      t.text :content
      t.timestamps
    end
  end
end
