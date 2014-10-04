require 'faker'

FactoryGirl.define do
	factory :picture do
		title {Faker::Lorem.word}
		artist {Faker::Name.name}
		url {Faker::Company.logo}
		category_id 1
	end
end