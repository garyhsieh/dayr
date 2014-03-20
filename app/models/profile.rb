class Profile < ActiveRecord::Base
  belongs_to :user
  
  validates_format_of :url, :with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/ix, :allow_blank => true
  
  validates_length_of :description, :maximum => 160, :too_long => 'must be less than 160 characters', :allow_blank => true

  # def to_param
  #   user.username
  # end
end
