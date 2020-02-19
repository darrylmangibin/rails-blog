# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

articles = [1,2,3,4,5,6,7,8,9]

users = [3,4,5,6,7,8,9,10]

articles.each do |article|
    Article.create(title: "This is an article #{article}", description: "This is a description for article #{a}rticle", user_id: 1)
end

users.each do |user|
    User.create(username: "User #{user}", email:"usersample#{user}@gmail.com", password:"123456")
end

