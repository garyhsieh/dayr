class CreateAdviceMessages < ActiveRecord::Migration
  def change
    create_table :advice_messages do |t|
      t.string :subject
      t.text :question
      t.integer :user_id
      t.timestamps
    end
  end
end
