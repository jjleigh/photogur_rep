require "rails_helper"

describe Comment do 

	context "Before creation" do
		it "has a valid factory" do
			comment_one = build(:comment)
			expect(comment_one).to be_valid
		end
	end 
	
end