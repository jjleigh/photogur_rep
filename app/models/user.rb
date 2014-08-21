class User < ActiveRecord::Base
	has_secure_password

	has_many :pictures, :through => :comments
	has_many :comments

	has_many :pictures

	validates_presence_of :name , :email, :password

end
