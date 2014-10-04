class User < ActiveRecord::Base
	has_secure_password

	has_many :pictures, :through => :comments
	has_many :comments, dependent: :destroy

	has_many :pictures, dependent: :destroy

	validates :name,  presence: true
	validates :password, presence: true
	validates :email, presence: true
end
