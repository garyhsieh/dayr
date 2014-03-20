class CreatePageViews < ActiveRecord::Migration
  def change
    create_table :page_views do |t|
      t.integer :user_id
      t.string :request_url
      t.string :ip_address
      t.string :referer
      t.string :user_agent
      t.string :controller_name
      t.string :action_name
      t.timestamp :created_at

      t.timestamps
    end
  end
end
