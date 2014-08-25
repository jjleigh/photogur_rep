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
    :url => "http://monicao.s3.amazonaws.com/bitmaker/house.jpg"
	)
Picture.create!(
	:title  => "Sea Power",
    :artist => "Stephen Scullion",
    :url => "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"
	)

Picture.create!(
	:title  => "Into the Poppies",
    :artist => "John Wilhelm",
    :url  => "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg" 

	)

Picture.create!(
	:title  => "Into The Blue",
    :artist => "Naomi campbell",
    :url => "http://media-cache-ec0.pinimg.com/736x/db/97/12/db9712b331de1a20bb969222e2b4187e.jpg"
	)
Picture.create!(
	:title  => "Rocky point",
    :artist => "Naom Chompsky",
    :url => "http://media-cache-ec0.pinimg.com/736x/ad/9e/53/ad9e53cf042f03cd6ccda739123519b8.jpg"
	)

Picture.create!(
	:title  => "Personal trainer",
    :artist => "Joan Smalls",
    :url => "http://media-cache-ak0.pinimg.com/736x/6b/5d/63/6b5d63b54a8890691536eb25135c2000.jpg"
	)

Picture.create!(
	:title  => "Girl with the fro",
    :artist => "Bob Marley",
    :url => "http://media-cache-ak0.pinimg.com/736x/27/7d/5a/277d5a4f87ae6487916f5ced9f787dab.jpg"
	)
Picture.create!(
	:title  => "Venom",
    :artist => "Christopher Hitchens",
    :url => "http://media-cache-ak0.pinimg.com/736x/26/ce/ff/26ceffe529817bef44d67815deec196b.jpg"
	)

Picture.create!(
	:title  => "Sonata",
    :artist => "Shaba Ranks",
    :url => "http://media-cache-ak0.pinimg.com/736x/6c/28/81/6c2881cc336885876758a755cd918dde.jpg"
	)




# this will seed the databse wth categories
	Category.create!(
		:name => "Landscape",
		:cat_image_url => "http://media-cache-ak0.pinimg.com/736x/18/e2/8d/18e28d26c7e8a8171031858d6bd7483f.jpg"
		)

	Category.create!(
		:name => "Portrait",
		:cat_image_url => "http://media-cache-ec0.pinimg.com/736x/45/a5/cd/45a5cd1e80de521e4523fbd719149b26.jpg"
		)
	Category.create!(
		:name => "Meme",
		:cat_image_url => "http://media-cache-ak0.pinimg.com/736x/2a/ba/0f/2aba0fe91c30b5360445f6145cee8034.jpg"
		)
	Category.create!(
		:name => "Still-life",
		:cat_image_url => "http://media-cache-ec0.pinimg.com/736x/c0/58/de/c058de4b27b0474f73067d302d440f47.jpg"
		)
	Category.create!(
		:name => "Food",
		:cat_image_url => "http://media-cache-ak0.pinimg.com/736x/79/b8/46/79b84603fbde25e6f6870858f4d55a20.jpg"
		)
	Category.create!(
		:name => "Animals",
		:cat_image_url => "http://media-cache-ak0.pinimg.com/736x/c6/46/09/c646092f07706d214a1fd68368944fee.jpg"
		)
	Category.create!(
		:name => "Fashion",
		:cat_image_url => "http://media-cache-ak0.pinimg.com/736x/25/c7/2d/25c72daff204ea3bcc8741375898131d.jpg"
		)
	Category.create!(
		:name => "Vintage",
		:cat_image_url => "http://media-cache-ak0.pinimg.com/736x/f7/f2/be/f7f2bec42cc8b509789e4426dd7167d2.jpg"
		)
	Category.create!(
		:name => "Graphics",
		:cat_image_url => "http://media-cache-ak0.pinimg.com/736x/d6/16/bb/d616bb6d1aa489f667c1f546eaa92db9.jpg"
		)
