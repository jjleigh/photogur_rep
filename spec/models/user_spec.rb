require "rails_helper"

describe User do 

	context "Before creation" do
		it "has a valid factory" do 
			user_one = build(:user)
			expect(user_one).to be_valid
		end 
		# validation tests
		# name tests

		it 'is invalid without a name' do
			expect(build(:user, name: nil)).to_not be_valid
		end

		# email tests

		it 'is invalid without an email' do
			expect(FactoryGirl.build(:user, email: nil)).to_not be_valid
		end

		# it 'should have @' do
		# 	expect(FactoryGirl).build(:user, email:).to include('@')
		# end 

		# password tests
		it 'is invalid without a password' do
			expect(FactoryGirl.build(:user, password: nil)).to_not be_valid
		end
	
	end

	# association tests

	it "should have many pictures" do 
		expect(build(:user)).to respond_to(:pictures)
	end

	it "should have many pictures" do 
		expect(build(:user)).to respond_to(:comments)
	end


	# have secure password test


end