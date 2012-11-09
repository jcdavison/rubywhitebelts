class ApplicationController < ActionController::Base
  protect_from_forgery

  def logged_in?
    session[:current_user_id] != nil ? true : false  
  end

  def logged_out?
    session[:current_user_id] == nil ? true : false  
  end 
  
  def current_user
    @user = User.find(session[:current_user_id])
    @user
  end

  def admin?
    logged_in? && current_user.admin == true ? true : false
  end

  def master?
    logged_in? && current_user.master == true ? true : false
  end

  def user_access?
    if logged_in? != true
      flash[:alert] = "you don't have access to that"
      redirect_to root_path
    end
  end

  def admin_access?
    if admin? != true
      flash[:alert] = "you don't have access to that"
      redirect_to root_path
    end
  end

  def master_access?
    if master? != true
      flash[:alert] = "you don't have access to that"
      redirect_to root_path
    end
  end


  helper_method :logged_in?, :logged_out?, :current_user, :admin?, :master?, :admin_access?, :master_access?, :user_access?

end
