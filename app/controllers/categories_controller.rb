class CategoriesController < ApplicationController

	def show
		@categories = Category.all
		@Category = Category.find(params[:id])
		@category_of_pictures = @category.pictures
		
	end


	def new
		@category = Category.new
	end

	def create
		if @category.save
	end
end
