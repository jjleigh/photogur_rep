class Picture < ActiveRecord::Base
	scope :newest_first, -> { order("created_at DESC")}
	scope :most_recent_nive, -> { newest_first.limit(9)}
	scope :created_before, ->(time) { where("created_at < ?", time)}

	has_many :users, :through => :comments
	has_many :comments
	belongs_to :user

	def self.search(search)

		if search
			@pictures = Picture.where('lower(title) = ? OR lower(artist) = ?', search.downcase, search.downcase)
		else
			@pictures = Picture.all
		end
	end

end
