class AddAttachmentImageLargeToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.attachment :image_large
    end
  end

  def self.down
    remove_attachment :events, :image_large
  end
end
