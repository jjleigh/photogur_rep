require "rails_helper"

describe Category do 

	# association tests

	it "should have many pictures" do 
		expect(build(:category)).to respond_to(:pictures)
	end
end