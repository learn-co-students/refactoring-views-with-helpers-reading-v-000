# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Author.create(name: "Michael Cox", genre: "mystery", bio: "A professor of Victorian Literature at Cambridge University.")

Author.create(name: "Susan Dwyer", genre: "science-fiction", bio: "An ecological scientist.")

Post.create(title: "An Analysis of Victorian Horror", description: "The Effect of Technology in Documenting Ghost Tales and Spiritual Anxieties", author_id: 1)

Post.create(title: "Solar Energy in Harvesting Artificial Intelligence", description: "Using Solar Energy to Detect Radioactive Frequencies Present in Higher Intelligence of Computing Machines", author_id: 2)
