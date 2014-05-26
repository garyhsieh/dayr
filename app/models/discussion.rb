class Discussion < ActiveRecord::Base

  validates_presence_of :subject
  validates_presence_of :content
  validates_presence_of :user_id

  belongs_to :user


  ## for comments ##
  acts_as_commentable
  has_many :comments
end
