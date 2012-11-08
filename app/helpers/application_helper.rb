module ApplicationHelper
  # def set_session_id(user)
  #   audit user
  #   session[:id] = user.id
  # end

  def logged_in?
     session[:current_user_id] ? true : false  
  end

  def logged_out?
     session[:current_user_id] == nil ? true : false  
  end 
  
  def current_user
    @user = User.find(session[:current_user_id])
    @user
  end

  def admin?
    logged_in? && current_user.admin ? true : false
  end

  def master?
    logged_in? && current_user.master ? true : false
  end

end
