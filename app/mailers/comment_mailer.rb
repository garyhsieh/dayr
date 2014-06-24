class CommentMailer < ActionMailer::Base
  default from: "dayr.me@gmail.com"

  def comment_reply_email(user, comment_type, body)
    mail(to: user.email, subject: "You Received a Reply to Your " + comment_type, body: body)
  end

  def advice_message_email(body)
    mail(to: "garyhsieh@gmail.com", subject: "A New Advice Question", body: body)
  end
end
