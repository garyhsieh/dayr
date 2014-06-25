class AddSubtitleToChallenges < ActiveRecord::Migration
  def change
  	 add_column :challenges, :subtitle, :string
  end
end
