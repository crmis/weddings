class AddAttachmentExtraimgToExtras < ActiveRecord::Migration
  def self.up
    change_table :extras do |t|
      t.attachment :extraimg
    end
  end

  def self.down
    remove_attachment :extras, :extraimg
  end
end
