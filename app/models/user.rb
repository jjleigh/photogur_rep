class User < ActiveRecord::Base
	has_secure_password

	has_many :pictures
	has_many :comments
end
