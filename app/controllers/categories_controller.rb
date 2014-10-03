class CategoriesController < ApplicationController
	respond_to :html, :js

	def index
		@categories = Category.all
	end
	
	def show
		@categories = Category.all
		@category = Category.find(params[:id])
		@pictures_in_category = @category.pictures	
	end

end
