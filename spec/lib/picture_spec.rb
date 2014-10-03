require "spec_helper"
require "picture"


describe Picture do
	it 'is invalid without a url' do
		picture = Picture.new
		picture.should be_valid
	end

	it " is invalid without a title" do
	end 

	it "is invalid without an artist" do
	end

	it "is invalid without a category_id" do
	end 
end