class AddImageUrlToChallenge < ActiveRecord::Migration
  def self.up
    add_column :challenges, :image_url, :string
  end

  def self.down
    remove_column :challenges, :image_url
  end
end
