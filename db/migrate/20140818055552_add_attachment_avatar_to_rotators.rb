class AddAttachmentAvatarToRotators < ActiveRecord::Migration
  def self.up
    change_table :rotators do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :rotators, :avatar
  end
end
