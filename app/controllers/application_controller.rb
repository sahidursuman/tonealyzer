class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  protect_from_forgery with: :exception, prepend: true
  helper_method :current_user

  def current_user
    # session[:user_id] = nil
    @current_user ||= User.find_by_uid(session[:user_id]) if session[:user_id]
  end

  def login(user)
    session[:user_id] = user.uid
    @current_user = user
  end
end
