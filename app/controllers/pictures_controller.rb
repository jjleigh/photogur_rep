class PicturesController < ApplicationController
	before_filter :ensure_logged_in, :except => [:show, :index]

  def index
     @pictures = Picture.search(params[:search])

    if @pictures.size.zero?
      flash[:notice] = "No results found"
      @pictures = Picture.all       
    end
    # @pictures = Picture.most_recent_nine
    # @Pictures = Picture.created_before(1.month.ago).count
    # @Pictures = Picture.created_before(1.week.ago)
	end

	def show
		# should display one picture
		@picture = Picture.find(params[:id])
    # @picture_owner = @picture.user.name  returns the name of the user who posted the image

    if current_user
      @comment = @picture.comments.build
    end
  end

  def new
  	@picture = Picture.new
  end

  def create 
  	@picture = Picture.create(picture_params)
    @picture.user_id = current_user.id

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

end


