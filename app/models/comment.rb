class Comment < ActiveRecord::Base
	belongs_to :picture
	belongs_to :user

	validates :description, presence: true
	validates :description, length: { maximum: 500, too_long: "%{count} characters is the maximum allowed"}
end
