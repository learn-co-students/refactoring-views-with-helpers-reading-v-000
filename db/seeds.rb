# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

author1 = Author.create({name: 'Hal Fields', genre: 'genre1', bio: 'This is a bio about Hal Fields'})
author2 = Author.create({name: 'Joe Blow', genre: 'genre1', bio: 'This is a bio about Joe Blow'})
post1 = Post.create({title: 'Title One', description: 'Description One', author_id: 1})
post2 = Post.create({title: 'Title Two', description: 'Description Two', author_id: 2})
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
