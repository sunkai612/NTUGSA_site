class AddAttachmentImageLargeToRecords < ActiveRecord::Migration
  def self.up
    change_table :records do |t|
      t.attachment :image_large
    end
  end

  def self.down
    remove_attachment :records, :image_large
  end
end
