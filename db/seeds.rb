# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Author.create(name: "Dennis", genre: "Ye Old Music", bio: "A really good artist")
  @post = Post.create(title: "My Post", description: "My post desc", post_status: true)
