class CreateAdministrators < ActiveRecord::Migration
  def change
    create_table :administrators do |t|
      t.string :uid
      t.string :pwd
      t.string :name
      t.timestamps
    end
  end
end
