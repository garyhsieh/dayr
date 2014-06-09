class CommentMailer < ActionMailer::Base
  default from: "dayr.me@gmail.com"

  def comment_reply_email(comment)

  	if comment.parent_id == nil

	  	if comment.commentable_type == AdviceMessage.name
	  		#reply to comment on AdviceMessage
	  		comment_parent = AdviceMessage.find(comment.commentable_id)
	  		@user = comment_parent.user
  			@comment_type = "Advice Message"

	  	elsif comment.commentable_type == Discussion.name
	  		#reply to comment on Discussion
	  		comment_parent = Discussion.find(comment.commentable_id)
	  		@user = comment_parent.user
  			@comment_type = "Discussion Post"

	  	else
	  		#reply to comment on Assignment
	  		@comment_type = nil
	  		@user = nil


	  	end

  	else

  		comment_parent = Comment.find(comment.parent_id)
  		@user = comment_parent.user
  		@comment_type = "Comment"


  	end

  	if @user != nil

	  	@body = comment.user.username.to_s + " wrote: \r\n\r\n " + comment.body.to_s
	    mail(to: @user.email, subject: "You Received a Reply to Your " + @comment_type, body: @body)

	end


  end
end
