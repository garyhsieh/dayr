class AddContactToUsers < ActiveRecord::Migration
  def change
  	 add_column :users, :receive_daily_sms_reminders, :boolean, :default => true
  	 add_column :users, :receive_email_notifications, :boolean, :default => true
  	 add_column :users, :sms_address, :string
  end
end
