class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to 
    else
      render 'new'
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
      render 'edit'
    end
  end

  def destroy
     @comment = Comment.find(params[:id])

     @comment.destroy
  end

  private
    def comment_params
      params.require(:comment).permit(:description)
    end
end
