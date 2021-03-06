class SessionsController < ApplicationController
  before_filter :user_access?, :only => :destroy

  def create
    p auth_hash[:info][:image]
    reset_session
    if @user = User.find_by_uid(auth_hash[:uid]) || @user = User.find_by_email(auth_hash[:info][:email])
      @user.update_info(auth_hash)
      session[:current_user_id] = @user.id
      flash[:success] = "Welcome Back #{@user.email} !"
      redirect_to belts_path
    else    
      @user = User.new
      # "auth_hash"
      # p auth_hash[:uid]
      # p "#{oauth_hash[:info][:firstName]} #{oauth_hash[:info][:lastName]}"
      
      @user.set_attributes(auth_hash)
      # p oauth_hash[:info][:pictureUrl]
        if @user.save
        session[:current_user_id] = @user.id  
        flash[:success] = "Welcome to Ruby White Belts"
        redirect_to belts_path
        else
        redirect_to root_path, :alert => "Something went terribly wrong, please Sign Up again"
        end    
    end
  end

  def destroy
    reset_session
    redirect_to root_path, :notice => "You Are Now Logged Out"
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end

  def set_session_id(user)
    session[:current_user_id] = user.id
  end
  
end