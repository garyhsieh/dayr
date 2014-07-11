class DailySms < ActionMailer::Base
  default from: "dayrme@gmail.com"

  def daily_message(user, challenge_name)
  	mail(to: user.sms_address, subject: "Today's Baby Dayr Challenge", body: challenge_name.to_s + ". Visit: www.dayr.me")
  end

  def end_message(user)
  	mail(to: user.sms_address, subject: "Challenges Completed", body: "Well done! You have completed the six-week Baby Dayr challenge! You can still visit www.dayr.me as frequently as you like, but you will no longer receive text messages from the program. Thank you for your participation.")
  end
end
