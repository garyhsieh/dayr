class DailySms < ActionMailer::Base
  default from: "dayr.me@gmail.com"

  def daily_message(user, challenge_name)
  	mail(to: user.sms_address, subject: "Today's Baby Dayr Challenge", body: challenge_name.to_s + ". Visit: www.dayr.me")
  end
end
