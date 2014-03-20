class CreateCompletions < ActiveRecord::Migration
  def self.up
    create_table :completions do |t|
      t.integer :assignment_id
      t.integer :user_id
      
      t.text :note
      
      t.timestamps
    end
    
    add_index :completions, :assignment_id
    add_index :completions, :user_id
    add_index :completions, [:assignment_id, :user_id]
  end

  def self.down
    remove_index :completions, :assignment_id
    remove_index :completions, :user_id
    remove_index :completions, [:assignment_id, :user_id]
    
    drop_table :completions
  end
end
