# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: "chamkoriyski@gmail.com", name: "Yuriy", password: "123456", password_confirmation: "123456")
User.create(email: "test@case.com", name: "Tester", password: "123456", password_confirmation: "123456")
User.create(email: "hombre@gmail.com", name: "Hombre", password: "123456", password_confirmation: "123456")

3.times do |i|
  Post.create(title: "Post #{i}", body: "Body of post #{i} looks like this.", user_id: User.first.id)
end

2.times do |i|
  Post.create(title: "Blog Post #{i}", body: "This is my blog post number #{i}.", user_id: User.second.id)
end

4.times do |i|
  Post.create(title: "My post number #{i}", body: "Post number #{i} is really simple.", user_id: User.third.id)
end
