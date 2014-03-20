class AddAttachmentImageToChallenge < ActiveRecord::Migration
  def self.up
    add_column :challenges, :image_file_name, :string
    add_column :challenges, :image_content_type, :string
    add_column :challenges, :image_file_size, :integer
    add_column :challenges, :image_updated_at, :datetime
  end

  def self.down
    remove_column :challenges, :image_file_name
    remove_column :challenges, :image_content_type
    remove_column :challenges, :image_file_size
    remove_column :challenges, :image_updated_at
  end
end
