module ApplicationHelper
  # def set_session_id(user)
  #   audit user
  #   session[:id] = user.id
  # end

  def logged_in?
    if session[:current_user_id]
      true
    else
      false
    end
  end

end
