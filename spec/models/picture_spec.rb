require "rails_helper"


describe Picture do

	# context "Before creation" do
	# 	it "has a valid factory" do
	# 		pic_one = build(:picture)
	# 		expect(pic_one).to be_valid
	# 	end 
	# end

	# # validity tests

	it "is invalid without a title" do
		expect(build(:picture, title: nil)).to_not be_valid
	end 

	it "is invalid without an artist" do
		expect(build(:picture, artist: nil)).to_not be_valid
	end 

	it "is invalid without an image url" do
		expect(build(:picture, url: nil)).to_not be_valid
	end

	it "is invalid with out a category" do
		expect(build(:picture, category_id: nil)).to_not be_valid
	end

	
	 # association tests

	 it  "should have many users through comments" do
	 	expect(build(:picture)).to respond_to(:users)
	 end

	 it  "should have many comments" do
	 	expect(build(:picture)).to respond_to(:comments)
	 end

	 it  "should belong to a user" do
	 	expect(build(:picture)).to respond_to(:user)
	 end

	 it "should belong to a category" do
	 	expect(build(:picture)).to respond_to(:category)
	 end


end