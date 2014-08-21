class Picture < ActiveRecord::Base
	scope :newest_first, -> { order("created_at DESC")}
	scope :most_recent_nive, -> { newest_first.limit(9)}
	scope :created_before, ->(time) { where("created_at < ?", time)}

	belongs_to :user
	has_many :comments #through :pictures

	def self.search(search)

		if search
			@pictures = Picture.where('title like ? OR artist like ?', "%#{:search}%", "%#{:search}%")
		else
			@pictures = Picture.all
		end
	end

end
