	
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


AdditionalInformation.create({:name => "The Truth about Baby Blues", :content => "__Understanding postpartum depression__
 
 <br>
 <p> *MYTH*: ""If I'm not happy, I'm not normal...maybe even a bad mom.""
 *TRUTH*: 70-80% of new moms report having some form of baby blues </p>
 
 <br>
 
 *Why it's important:* 
 * 70-80% of new moms experience some degree of ""baby blues""
 ** 15% of them end up experiencing full blown post-partum depression 
 ** Often symptoms begin 4-5 days after the birth of your baby
 ** Symptoms usually begin to get better after about two weeks
 ** If symptoms continue past two weeks, it is considered post-partum depression
 * This IS NOT your fault! Baby blues and postpartum depression are caused by a drop in hormone levels after giving birth
 * Believe it or not, new dads can experience baby blues as well 
 
 <br>
 
 *What should I do?*
 * Understand that some levels of depression are normal after giving birth
 ** Your body is adjusting to changes and you are adapting a new lifestyle
 * Talk to your doctor if:
 ** Symptoms don't fade after two weeks or last more than a couple hours a day
 ** Symptoms are getting worse
 ** Symptoms make it hard to care for your baby
 ** You begin to have thoughts of harming yourself or your baby
 ** ALL can be signs of post-partum depression, and not just baby blues
 * Find an activity you enjoy that can help relieve stress 
 ** Examples: reading, yoga, art, exercises, listening to music, watching a movie etc.
 ** Turning to drinking, smoking, or drugs can seem stress relieving, but can cause lots of harm to you and your baby in the long run 
 * *When in doubt, discuss any concerns with your doctor!!!*" })

AdditionalInformation.create({:name => "How do I know my baby is ready for solid foods?", :content => "*The current guidelines for introducing your little one to solid foods is to wait until about 4-6 months of age.  Before this, your baby's digestive system is not ready for solid foods.  Solid foods are any food other than breast milk or formula.* 
 <br>
 *You should also notice these signs that tell you your baby may be ready for solid foods:* 
 * Your baby can hold her head up on her own.
 * Your baby is able to sit up without support.
 * Your baby reaches for things and can hold them.
 * Your baby opens her mouth or seems interested when she watches you eat!
 * Your baby recognizes a spoon and opens her mouth as it comes to her.
 * Your baby doesn't push food out of her mouth with her tongue.
 <br>
 *Food Introduction Timeline!* 
 
 Birth -- 6 months!
 * Breastmilk or formula is enough
 Six months! 
 * Pureed baby food fruit
 * Baby cereal
 * Baby food meat
 Nine Months!
 * Mashed fruit
 * Shredded cheese
 * Small pieces of meat (1/2 inch or smaller)
 Twelve Months!
 * Small pieces of soft fruit (1/2 inch or smaller)
 * Whole Milk 
 * Mixed meat dish (for example, chicken and rice)
 <br>
 *Do's and Don'ts of Homemade Baby Food*
 * DO: cook vegetables until they are soft.
 * DON'T: Use honey. (Or give them any food made with honey!) It may contain bacteria they can't handle until at least a year of age.
 * DO: Wash fruits and veggies before mashing them!
 * DON'T: Add salt or sugar to food being prepared for baby
 * DO: Wash hands and surfaces that will come in contact with baby food
 * DO: Make extra, cover it, and freeze it for a later date
 * DON'T: Defrost in the microwave
 * DO: Leave it in the fridge for it to defrost, or run it under warm water" })

AdditionalInformation.create({:name => "How do I know my baby is getting enough to eat?", :content => "*Your baby is getting enough if:*
 * She has 6 or more wet diapers a day, plus 3 dirty diapers a day.
 * She is gaining weight. 
 * She is alert when awake.
 <br>
 
 *Remember:* 
 * How much your baby eats will vary day by day!
 * The amount she eats will increase as she gets older, and as she has growth spurts! 
 * Only she knows if she’s hungry!
 * Wait for Flag cues instead of sticking to a strict feeding schedule! 
 * Don't feed your baby more than 32 oz. in a 24 hour period. 
 <br>
 
 __If your baby ""skips"" two or more meals in a row for any reason, consult your baby's doctor.__ " })


Assignment.create(:date => Date.today, :challenge_id => "1")
Assignment.create(:date => Date.today-1, :challenge_id => "2")

