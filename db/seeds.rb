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
		:cat_image_url => "assets/images/landscape.jpg"
		)

	Category.create!(
		:name => "Portrait",
		:cat_image_url => "assets/images/portrait.jpg"
		)
	Category.create!(
		:name => "Meme",
		:cat_image_url => "assets/images/meme.jpg"
		)
	Category.create!(
		:name => "Still-life",
		:cat_image_url => "assets/images/still-life.jpg"
		)
	Category.create!(
		:name => "Food",
		:cat_image_url => "assets/images/food-photogur.jpg"
		)
	Category.create!(
		:name => "Animals",
		:cat_image_url => "assets/images/animals-photogur.jpg"
		)
	Category.create!(
		:name => "Fashion",
		:cat_image_url => "assets/images/fashion-photogur.jpg"
		)
	Category.create!(
		:name => "Vintage",
		:cat_image_url => "assets/images/vintage-photogur.jpg"
		)
	Category.create!(
		:name => "Graphics",
		:cat_image_url => "assets/images/graphics-photogur.jpg"
		)
