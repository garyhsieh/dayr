class AddImageAttributionUrlToChallenge < ActiveRecord::Migration
  def change
    add_column :challenges, :image_attribution_url, :string
  end
end