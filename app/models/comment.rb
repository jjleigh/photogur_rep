class Comment < ActiveRecord::Base
	belongs_to :picture
	belongs_to :user

	validates :description, presence: true
	validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed"}
end
