class UsersController < ApplicationController
  before_filter :ensure_logged_in, :only => [:edit, :show, :update, :destroy]
  respond_to :html, :js

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to pictures_url, :notice => "Thanks for signing up!"
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end


  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      redirect_to user_path(@user)
    else
      render "edit"
    end
  end

  def show
    @user = User.find(params[:id])

    if current_user
      @my_pictures = @user.pictures
    end
  end

  def destroy
    @user = User.find(params[:id])

    @user.destroy
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
