module ApplicationHelper

  def current_user
    if session[:email]
      @current_user ||= User.find_by_email(session[:email])
    end
    @current_user
  end

  # Returns true if current_user exists, false otherwise
  def logged_in?
    !current_user.nil?
  end

end
