class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :location
      t.string :url
      t.string :description
      
      t.integer :user_id, :null => false

      t.timestamps
    end
    
    add_index :profiles, :user_id, :unique => true
  end
end
