puts 'Start inserting seed "quests" ...'
 User.limit(10).each do |user|
   quest = Quest.create({ title: Faker::Hacker.say_something_smart, description: Faker::Hacker.say_something_smart })
   puts "quest#{quest.id} has created!"
 end