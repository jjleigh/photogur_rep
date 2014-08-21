class PicturesController < ApplicationController
	before_filter :ensure_logged_in, :except => [:show, :index]
	
  def index
    @pictures = Picture.search(params[:search])
		filtering_params(params).each do |key, value|
      @pictures = @products.public_send(key, value) if value.present?
    # @pictures = Picture.most_recent_nine
    # @Pictures = Picture.created_before(1.month.ago).count
    # @Pictures = Picture.created_before(1.week.ago)
    end
	end

	def show
		# should display one picture
		@picture = Picture.find(params[:id])
  end

  def new
  	@picture = Picture.new
  end

  def create 
  	@picture = Picture.create(picture_params)
  	if @picture.save
  		redirect_to pictures_url
  	else
  		render :new
  	end
  end 

  def edit
  	@picture = Picture.find(params[:id])
  end

  def update
  	@picture = Picture.find(params[:id])

  	if @picture.update_attributes(picture_params)
  		redirect_to "/pictures/#{@picture.id}"
  	else
  		render :edit
  	end
  end

  def destroy
  	@picture = Picture.find(params[:id])
  	@picture.destroy
  	redirect_to pictures_url
  end 

  private 
  def picture_params
  	params.require(:picture).permit(:artist, :title, :url)
  end

  def filtering_params(params)
    params.slice(:newest_first, :most_recent_nine, :created_before)
    
  end

end


