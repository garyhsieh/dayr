class CommentMailer < ActionMailer::Base
  default from: "dayrme@gmail.com"

  def comment_reply_email(user, comment_type, body)
    mail(to: user.email, subject: "You Received a Reply to Your " + comment_type, body: body)
  end

  def advice_message_email(body)
#    mail(to: "karnold@ingham.org,KMckinley@ingham.org,rtraylor@ingham.org,dayrme@gmail.com", subject: "A New Advice Question", body: body)
	mail(to: "LDoss@ingham.org,rtraylor@ingham.org,dayrme@gmail.com", subject: "A New Advice Question", body: body)
  end
end
