class PageView < ActiveRecord::Base
  belongs_to :user
  
  #difference between user attribute accessible? attribute protected? 
end
