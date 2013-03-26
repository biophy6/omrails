class AddAttachmentImageToCts < ActiveRecord::Migration
  def self.up
    change_table :cts do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :cts, :image
  end
end
