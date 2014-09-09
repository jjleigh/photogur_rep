# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# this will seed the database wth categories
	Category.create!(
		:name => "Landscape",
		:cat_image_url => "landscape.jpg",
		:id => 1
		)

	Category.create!(
		:name => "Portrait",
		:cat_image_url => "portrait.jpg",
		:id => 2
		)
	Category.create!(
		:name => "Meme",
		:cat_image_url => "meme.jpg",
		:id => 3
		)
	Category.create!(
		:name => "Still-life",
		:cat_image_url => "still-life.jpg",
		:id => 4
		)
	Category.create!(
		:name => "Food",
		:cat_image_url => "food-photogur.jpg",
		:id => 5
		)
	Category.create!(
		:name => "Animals",
		:cat_image_url => "animals-photogur.jpg",
		:id => 6
		)
	Category.create!(
		:name => "Fashion",
		:cat_image_url => "fashion-photogur.jpg",
		:id => 7
		)
	Category.create!(
		:name => "Vintage",
		:cat_image_url => "vintage-photogur.jpg",
		:id => 8
		)
	Category.create!(
		:name => "Graphics",
		:cat_image_url => "graphics-photogur.jpg",
		:id => 9
		)
