class ApplicationController < ActionController::Base
  helper_method :current_user
  # helper_method :logged_in?, :current_user

  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end

  def log_in(user)
    session[:user_id] = user.id
    @current_user = user
    redirect_to root_path
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  # def authorized
  #   redirect_to login_path unless logged_in?
  # end
end
