class CategoriesController < ApplicationController


	def show
		@categories = Category.all
		@Category = Category.find(params[:id])
		@pictures_in_a_category = @category.pictures	
	end

end
