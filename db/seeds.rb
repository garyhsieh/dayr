# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
#User.create()

#User.new({:email => "guy@gmail.com", :roles => ["admin"], :password => "111111", :password_confirmation => "111111" }).save(false)
Challenge.create({:name => "Count the Cues, not the Minutes", :description => "*Why it's important:*
 * Cues are signs that your baby uses to tell you something! 
 * Your baby's cues will tell you when they are full!
 * Cues often come in groups. For example, a baby could cry, turn away, and arch their back all at the same time.
 * Hint: Let your baby decide whether or not to eat, and how much to eat.  Don't force your baby to feed for a specific amount of time. 
 
 *How to?*
 * Hide the clock while feeding your baby today (yes, that includes the cell phone!). 
 * Instead, keep track of your baby's ""stop"" and ""go"" cues
 * When you see a group of ""stop"" cues take a break from feeding your baby.
 * Don't forget to log on and officially complete the challenge by clicking on the ""challenge completed"" button!  
 
 *Supplemental material/extra:*
 * Table of ""stop"" and ""go"" cues - you can print a copy to keep!
 * Twitter Tip: As your baby grows up remember that how much or how long your baby eats should be up to him or her. 
 * Research shows that healthy babies will not starve themselves.  When provided with healthy options they will naturally select what their bodies need.
 ", :category => "Nutrition", :image_url => "https://farm6.staticflickr.com/5020/5542169510_7fd0f76731.jpg", :image_attribution_url => "https://flic.kr/p/9rK4UJ" })

Challenge.create({:name => "Make your baby the star of your attention", :description => "*Why it's important:* 
 * TV in the background or loud music will take your baby's attention away from feeding.
 * The American Academy of Pediatrics suggests no TV time for kids less than two years of age. Why? Research shows babies need face-to-face interaction to have healthy brain growth and development. 
 * Your baby needs YOU more than anything else!
 
 *How to?*
 * Turn the TV off before your start the feeding. 
 * Put your phone on silent!  If you think you'll be tempted to use it, leave in it in another room!
 * Try singing or humming to your baby.  Talk to your little one too!
 * Don't put a TV in your baby's room.
 * Don't forget to log on and officially complete the challenge by clicking on the ""challenge completed"" button!", :category => "Social", :image_url => "https://farm1.staticflickr.com/180/478806672_1e536424ca.jpg", :image_attribution_url => "https://flic.kr/p/Jj1xs" })


Assignment.create(:date => Date.today, :challenge_id => "1")
Assignment.create(:date => Date.today-1, :challenge_id => "2")

