class CommentsController < ApplicationController
   before_filter :ensure_logged_in, :only => [:edit, :create, :show, :update, :destroy]
   before_filter :load_picture

  def show
    @comment = Comment.find(params[:id])
  end

  def create
    @comment = @picture.comments.build(comment_params)
    @comment.user_id =current_user.id

    respond_to do |format|
      if @comment.save
        format.html {redirect_to picture_path(@picture.id)}
        format.js {} #This will look for app/views/reviews/create.js.erb
      else
        format.html {render 'pictures/show', alert: "There was an error."}
        format.js {}
      end
    end
  end



  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])

    if @comment.update_attributes(comment_params)
      redirect_to
    else
      render :edit
    end
  end

  def destroy
     @comment = Comment.find(params[:id])

     respond_to do |format|
      if @comment.destroy
        format.html
        format.js
      end
    end



     # redirect_to picture_path(@picture)
  end


  private
  def comment_params
    params.require(:comment).permit(:description, :picture_id, :user_id)
  end

  def load_picture
    @picture = Picture.find(params[:picture_id])
  end

end
