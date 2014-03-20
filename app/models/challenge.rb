class Challenge < ActiveRecord::Base
  CATEGORIES = [
    "Physical Activity", "Social", "Nutrition", "Fun"
  ]
  
#  has_attached_file :image, :styles => { :medium => "440x440>"}
  
  validates_presence_of :name
  validates_presence_of :category
  
  has_many :assignments
end
