class PicturesController < ApplicationController
	
	def index
		@most_recent_pictures = Picture.most_recent_five
    @total = Picture.created_before(1.month.ago).count
    @one_month_old = Picture.created_before(1.month.ago)


    @pictures = [
      {
        :title  => "The old church on the coast of White sea",
        :artist => "Sergey Ershov",
        :url    => "http://monicao.s3.amazonaws.com/bitmaker/house.jpg"
      },
      {
        :title  => "Sea Power",
        :artist => "Stephen Scullion",
        :url    => "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"
      },
      {
        :title  => "Into the Poppies",
        :artist => "John Wilhelm",
        :url    => "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg"
      }
    ]
  
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

end


