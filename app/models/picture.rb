class Picture < ActiveRecord::Base
	default_scope { order("created_at DESC")}
	scope :most_recent_nive, -> { newest_first.limit(9)}
	scope :created_before, ->(time) { where("created_at < ?", time)}

	has_many :users, :through => :comments
	has_many :comments
	belongs_to :user
	belongs_to :category


	validates :artist, presence: true
	validates :title, presence: true
	validates :url, presence: true
	validates :category_id, presence: true

	def self.search(search)

		if search
			@pictures = Picture.joins(:category).where('lower(title) = ? OR lower(artist) = ? OR lower(name) = ?', search.downcase, search.downcase, search.downcase)
			# ost.joins(:accounts).where("posts.attribute = ? or accounts.attribute = ?", search_term)
		else
			@pictures = Picture.all
		end
	end

end
