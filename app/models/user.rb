class User < ActiveRecord::Base
	has_secure_password

	has_many :pictures
	has_many :comments

	validates_presence_of :name , :emal, :password

end
