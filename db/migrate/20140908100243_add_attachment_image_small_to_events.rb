class AddAttachmentImageSmallToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.attachment :image_small
    end
  end

  def self.down
    remove_attachment :events, :image_small
  end
end
