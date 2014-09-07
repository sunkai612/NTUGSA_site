class AddAttachmentFileToRecords < ActiveRecord::Migration
  def self.up
    change_table :records do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :records, :file
  end
end
