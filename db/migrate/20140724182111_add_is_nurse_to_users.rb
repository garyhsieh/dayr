class AddIsNurseToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :is_nurse, :boolean, :default => false
  end
end
