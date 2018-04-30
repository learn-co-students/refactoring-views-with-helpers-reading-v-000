# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

# create_table "authors", force: :cascade do |t|
#   t.string   "name"
#   t.string   "genre"
#   t.text     "bio"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false

# create_table "posts", force: :cascade do |t|
#   t.string   "title"
#   t.text     "description"
#   t.datetime "created_at",  null: false
#   t.datetime "updated_at",  null: false
#   t.boolean  "post_status"
#   t.integer  "author_id"

# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

authors = Author.create([{ name: 'Frank Herbert' }, {name: 'Issac Asimov' }])
