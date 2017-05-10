class AddAttachmentServicePicToServices < ActiveRecord::Migration
  def self.up
    change_table :services do |t|
      t.attachment :service_pic
    end
  end

  def self.down
    remove_attachment :services, :service_pic
  end
end
