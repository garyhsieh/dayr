class Assignment < ActiveRecord::Base

  validates_presence_of :date
  
  belongs_to :challenge
  
  has_many :completions
  has_many :users, :through => :completions
  
  ## for comments ##
  acts_as_commentable
  has_many :comments
  
  
  
  ##################################
  # date using Chronic
  # for natural language date/time
  ##################################
  
  def chronic_date=(str)
    @chronic_date = str
    if str.blank?
      self.date = nil
    else
      self.date = Chronic.parse(str) || Date.parse(str)
    end
  end
  
  def chronic_date
    @chronic_date || self.date
  end
  
  # Humanized Attributes
  # http://henrik.nyh.se/2007/12/change-displayed-column-name-in-rails-validation-messages
  HUMANIZED_ATTRIBUTES = {
    :chronic_date => "Date"
  }

  def self.human_attribute_name(attr)
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end

end
