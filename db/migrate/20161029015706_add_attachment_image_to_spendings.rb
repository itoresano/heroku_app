class AddAttachmentImageToSpendings < ActiveRecord::Migration
  def self.up
    change_table :spendings do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :spendings, :image
  end
end
