class AddAttachmentImageSmallToRecords < ActiveRecord::Migration
  def self.up
    change_table :records do |t|
      t.attachment :image_small
    end
  end

  def self.down
    remove_attachment :records, :image_small
  end
end
