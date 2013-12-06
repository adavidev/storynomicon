# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.create([{:content => "this is the text to parse.  unique name", :title => "unique text"}])
#Tag.create([{:post => Post.first, :tag => "Unique name"}])

Post.create([{:content => "unique text should make a link to post 1", :title => "unique name"}])
#Tag.create([{:post => Post.first, :tag => "Unique text"}])