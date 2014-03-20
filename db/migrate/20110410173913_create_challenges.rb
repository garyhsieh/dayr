class CreateChallenges < ActiveRecord::Migration
  def self.up
    create_table :challenges do |t|
#      t.date :date
      t.string :name
      t.text :description
      t.string :category

      t.timestamps
    end
    
#    add_index :challenges, :date
    add_index :challenges, :category
  end

  def self.down
#    remove_index :challenges, :date
    remove_index :challenges, :category
    
    drop_table :challenges
  end
end
