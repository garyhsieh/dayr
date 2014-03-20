class CreateAssignments < ActiveRecord::Migration
  def self.up
    create_table :assignments do |t|
      t.date    :date
      t.integer :challenge_id
      
      t.timestamps
    end
    
      add_index :assignments, :date
  end

  def self.down
    remove_index :assignments, :date
    
    drop_table :assignments
  end
end
