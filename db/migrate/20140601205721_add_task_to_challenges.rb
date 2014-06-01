class AddTaskToChallenges < ActiveRecord::Migration
  def change
  	add_column :challenges, :task, :string
  end
end
