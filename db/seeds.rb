require 'faker'

User.create(username: "jkeslin", email: "jkeslin@gmail.com", password: "password")

user_counter = 1
9.times do 
	User.create(username: Faker::Internet.user_name, email: Faker::Internet.email, password: "password")
	user_counter += 1
end

(1..user_counter).each do |id|
	Article.create(user_id: id, title: Faker::Hacker.say_something_smart, content: Faker::Lorem.sentences(6).join(" "))
end


50.times do
	Comment.create(user_id: rand(1..10), article_id: rand(1..10), content: Faker::Hacker.say_something_smart)
end