puts 'Start inserting seed "lessons" ...'
 User.limit(10).each do |user|
   lesson = Lesson.create({ title: Faker::Hacker.say_something_smart, description: Faker::Hacker.say_something_smart, image: [open("#{Rails.root}/db/fixtures/dummy.png")]})
   puts "lesson#{lesson.id} has created!"
 end