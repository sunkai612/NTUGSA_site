class CreateStatutes < ActiveRecord::Migration
  def change
    create_table :statutes do |t|
      t.string :title	
      t.text :content
      t.timestamps
    end
  end
end
