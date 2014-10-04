require 'faker'

FactoryGirl.define do
	factory :picture do
		title {Faker::Lorem.word}
		artist {Faker::Name.name}
		image "bobisbob.jpg"
		category_id 1
	end
end