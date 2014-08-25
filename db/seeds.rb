# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# this seeds the database with pictures
Picture.create!(
	:title  => "The old church on the coast of White sea",
    :artist => "Sergey Ershov",
    :url    => "http://monicao.s3.amazonaws.com/bitmaker/house.jpg"
	)
Picture.create!(
	:title  => "Sea Power",
    :artist => "Stephen Scullion",
    :url    => "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"
	)

Picture.create!(
	:title  => "Into the Poppies",
    :artist => "John Wilhelm",
    :url    => "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg" 

	)





Picture.create!(
	:title  => "Into The Blue",
    :artist => "Naomi campbell",
    :url    => "http://media-cache-ec0.pinimg.com/736x/db/97/12/db9712b331de1a20bb969222e2b4187e.jpg"
	)
Picture.create!(
	:title  => "Rocky point",
    :artist => "Naom Chompsky",
    :url    => "http://media-cache-ec0.pinimg.com/736x/ad/9e/53/ad9e53cf042f03cd6ccda739123519b8.jpg"
	)

Picture.create!(
	:title  => "Personal trainer",
    :artist => "Joan Smalls",
    :url    => "http://media-cache-ak0.pinimg.com/736x/6b/5d/63/6b5d63b54a8890691536eb25135c2000.jpg"
	)




Picture.create!(
	:title  => "Girl with the fro",
    :artist => "Bob Marley",
    :url    => "http://media-cache-ak0.pinimg.com/736x/27/7d/5a/277d5a4f87ae6487916f5ced9f787dab.jpg"
	)
Picture.create!(
	:title  => "Venom",
    :artist => "Christopher Hitchens",
    :url    => "http://media-cache-ak0.pinimg.com/736x/26/ce/ff/26ceffe529817bef44d67815deec196b.jpg"
	)

Picture.create!(
	:title  => "Sonata",
    :artist => "Shaba Ranks",
    :url    => "http://media-cache-ak0.pinimg.com/736x/6c/28/81/6c2881cc336885876758a755cd918dde.jpg"
	)




# this will seed the databse wth categories
	Category.create! (
			:name  => "Landscape"
			:cat_image_url => ""
		)

	Category.create! (
			:name  => "Portrait"
			:cat_image_url => ""
		)
	Category.create! (
			:name  => "Meme"
			:cat_image_url => ""
		)
	Category.create! (
			:name  => "Still-life"
			:cat_image_url => ""
		)
	Category.create! (
			:name  => "Food"
			:cat_image_url => ""
		)
	Category.create! (
			:name  => "Animals"
			:cat_image_url => ""
		)
	Category.create! (
			:name  => "Fashion"
			:cat_image_url => ""
		)
	Category.create! (
			:name  => "Vintage"
			:cat_image_url => ""
		)
	Category.create! (
			:name  => "Graphics"
			:cat_image_url => ""
		)
