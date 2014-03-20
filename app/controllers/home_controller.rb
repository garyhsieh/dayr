class HomeController < ApplicationController
  def index
    @assignment = Assignment.find(:first, :conditions => ["DATE(date) = DATE(?)", Date.today])
    
    if @assignment
      @completions_size = @assignment.completions.size
      #@comments = @challenge.root_comments
      @comments = Comment.find_comments_for_commentable_threaded(@assignment.class.name, @assignment.id)
      render :template => "assignments/show"
    else
      render :template => "assignments/not_found"
    end
  end
end
