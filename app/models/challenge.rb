class Challenge < ActiveRecord::Base
  CATEGORIES = [
    "Physical Activity", "Social", "Nutrition", "Fun"
  ]
  
#  has_attached_file :image, :styles => { :medium => "440x440>"}
  
  validates_presence_of :name
  validates_presence_of :category
  validates_presence_of :subtitle
  validates_presence_of :task
  validates_presence_of :image_url
  
  has_many :assignments
  has_many :additional_information

end
