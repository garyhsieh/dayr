	
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
#User.create()

#User.new({:email => "guy@gmail.com", :roles => ["admin"], :password => "111111", :password_confirmation => "111111" }).save(false)

Challenge.create({:name => "A Cue is a Clue!", :task=>"Spot one cue next time you feed your baby", :description => "Learn what baby cues are and how to spot them! Read about flag, stop, and go cues.
 
  <br>
  
 h2. WHY
 
 * A cue is an action, sound or movement that is a clue to tell you what your baby wants!
  
 <br>
 
 h2. STEPS
 
 * We've broken them down into categories:
 
 <br>
 
 !{width:3%}../../../images/dayr/flag.png(Flag)!  ""Flag"" Cues! 
 
 Tell you +your baby is hungry+! Respond by starting the feeding! 
 
 <br>
 Early Flag Cues: 
 * Stirring
 * Opening her mouth
 * Turning her head
 <br>
 
 Middle Flag Cues:
 * Stretching 
 * Moving a lot!
 * Putting her hand in her mouth
 <br>
 
 Late Flag Cues: 
 * Fussing
 * Crying!
 * Face color turning red
 <br>
 
 <br>
 
 !{width:3%}../../../images/dayr/go.png(Go)! ""Go"" Cues!
 
 Tell you +your baby wants to keep eating+.
 
 <br>
 
 * Looking at your face
 * Moving her arms toward you
 * Turning her head toward you
 * Bright eyes!
 * Smiling
 * Making feeding sounds (swallowing sounds, sucking sounds, smacking lips together)
 * Crawling to you!
 <br>
 	
 <br>
 
 !{width:3%}../../../images/dayr/stop.png(Stop)! ""Stop"" Cues!
 
 Tell you +your baby needs a break or is full+!
 <br>
 * Turning her head away from you
 * Arching her back or pulling away
 * Getting drowsy
 * Falling asleep
 * Fussiness 
 * Crying
 * Wrinkling her forehead
 * Kicking or squirming
 
 <br>", :category => "Nutrition", :image_url => "https://farm4.staticflickr.com/3696/14111299719_d2c6e93765_c.jpg", :image_attribution_url => "https://www.flickr.com/gp/124987162@N02/6X7FU8" })


Challenge.create({:name => "Make your baby the star of your attention", :task=>"Keep the TV, cell phone, and loud music off while you feed your baby", :description => "*Why it's important:* 
 * TV in the background or loud music will take your baby's attention away from feeding.
 * The American Academy of Pediatrics suggests no TV time for kids less than two years of age. Why? Research shows babies need face-to-face interaction to have healthy brain growth and development. 
 * Your baby needs YOU more than anything else!
 
 *How to?*
 * Turn the TV off before your start the feeding. 
 * Put your phone on silent!  If you think you'll be tempted to use it, leave in it in another room!
 * Try singing or humming to your baby.  Talk to your little one too!
 * Don't put a TV in your baby's room.
 * Don't forget to log on and officially complete the challenge by clicking on the ""challenge completed"" button!", :category => "Social", :image_url => "https://farm4.staticflickr.com/3770/14111435267_b12d26ec8e.jpg", :image_attribution_url => "https://www.flickr.com/gp/124987162@N02/WeG641" })

Challenge.create({:name => "Use Your Smile!", :task=>"Smile to your baby as you feed her! ", :description => "h2. WHY
 <br>
 * Even though your baby can't understand the words you say just yet, the look on your face gives her a clue as to how you are feeling!
 <br>
 
 h2. STEPS
 * Talk to your baby with a smile on your face!
 * Hold your baby so she can see your face, and you can see hers.  Hold her so that her head is 8-10 inches away from yours. (This is where her vision focuses best).
 * Keep that frown upside down! Try not to look grumpy when you look at your baby. 
 <br>
 ""Click here"":../../pdf/use_your_smile.pdf for ways to position your baby so you can easily see her eyes. ", :category => "Social", :image_url => "https://farm3.staticflickr.com/2921/14294631121_f4e11df0f6.jpg", :image_attribution_url => "https://www.flickr.com/gp/124987162@N02/57cE64" })



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
 * Only she knows if she's hungry!
 * Wait for Flag cues instead of sticking to a strict feeding schedule! 
 * Don't feed your baby more than 32 oz. in a 24 hour period. 
 <br>
 
 __If your baby ""skips"" two or more meals in a row for any reason, consult your baby's doctor.__ " })

AdditionalInformation.create({:name => "A Cue is a Clue", :content => "!{width:3%}../../../images/dayr/flag.png(Flag)!
 Flag Cues! 
 These cues tell you +your baby is hungry+! 
 <br>
 Early Flag Cues: 
 * Stirring
 * Opening her mouth
 * Turning her head
 <br>
 Middle Flag Cues:
 * Stretching 
 * Moving a lot!
 * Putting her hand in her mouth
 <br>
 Late Flag Cues: 
 * Fussing
 * Crying!
 * Face color turning red
 <br>
 !{width:3%}../../../images/dayr/go.png(Go)!
 Go Cues!
 Tell you +your baby wants to keep feeding+!
 <br>
 * Looking at your face
 * Moving her arms toward you
 * Turning her head toward you
 * Bright eyes!
 * Smiling
 * Making feeding sounds (swallowing sounds, sucking sounds, smacking lips together)
 * Crawling to you!
 <br>
 !{width:3%}../../../images/dayr/stop.png(Stop)!
 Stop Cues! 
 Tell you +your baby needs a break or is full+!
 <br>
 * Turning her head away from you
 * Arching her back or pulling away
 * Getting drowsy
 * Falling asleep
 * Fussiness 
 * Crying
 * Wrinkling her forehead
 * Kicking or squirming" })


Assignment.create(:date => Date.today+3, :challenge_id => "3")
Assignment.create(:date => Date.today+2, :challenge_id => "2")
Assignment.create(:date => Date.today+1, :challenge_id => "1")
Assignment.create(:date => Date.today, :challenge_id => "3")
Assignment.create(:date => Date.today-1, :challenge_id => "2")
Assignment.create(:date => Date.today-2, :challenge_id => "1")

