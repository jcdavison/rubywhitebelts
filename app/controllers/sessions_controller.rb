class SessionsController < ApplicationController

  def index

  end

  def create
    reset_session
    if @user = User.find_by_twitter_id(auth_hash[:uid])
      session[:current_user_id] = @user.id
      flash[:success] = "Welcome Back @#{@user.twitter_handle} !"
      redirect_to the_path_path
    else    
      @user = User.new
      @user.set_attributes(auth_hash)
        if @user.save
        session[:current_user_id] = @user.id  
        flash[:success] = "Welcome to Ruby White Belts"
        redirect_to the_path_path
        else
        redirect_to root_path, :alert => "Something went terribly wrong, please Sign Up again"
        end    
    end
  end

  def destroy
    reset_session
    redirect_to root_path, :alert => "You Are Now Logged Out"
  end

  # protected

  def auth_hash
    request.env['omniauth.auth']
  end

  def set_session_id(user)
    session[:current_user_id] = user.id
  end

  def toggle

  end
  
end
