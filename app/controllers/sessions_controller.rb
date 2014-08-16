class SessionsController < ApplicationController
  def new
  end

  def create
  	user =User.find_by_email(params[:email])

  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.user_id
  		redirect_to pictures_url
  	else 
  		flash.now[:alert] = "Invalid email or password"
  		render :new
  	end
  end

  def destroy
  	session[:user_id] = nil

  	redirect_to pictures_url, :notice => "Logged out!"
  end
end
