    class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :login, :email, :username, :password, :password_confirmation, :remember_me, :sign_up_code, :sms_address, :receive_daily_sms_reminders, :receive_email_notifications

  # Virtual attribute for authenticating by either username or email
  # This is in addition to a real persisted field like 'username'
  attr_accessor :login

  validates_uniqueness_of :username
  validates_presence_of :username

  validates :sign_up_code, :inclusion => { :in => "t4tm", :message => "The code you have entered is not a valid sign up code. Please contact dayr.me@gmail.com if you are participating in the study and cannot sign up. " }
  
  has_many :completions
  has_many :assignments, :through => :completions
  has_many :comments
  has_many :advice_messages
  
  has_many :page_views
  
  has_one :profile, :dependent => :destroy
  
  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    login = conditions.delete(:login)
    where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.strip.downcase }]).first
  end

  def self.send_daily_sms
    @users = self.all
    @assignment = Assignment.find(:first, :conditions => ["DATE(date) = DATE(?)", Date.today])
    challenge_name = @assignment.challenge.name
    if @assignment != nil
      @users.each do |user|
        if user.receive_daily_sms_reminders && user.sms_address != nil
          diff = ((Time.now - user.created_at) / 1.day).round 
          if diff < 43
            DailySms.daily_message(user, challenge_name).deliver!
          elsif diff == 43
            DailySms.end_message(user).deliver!
          end
        end
      end
    end
  end

end
