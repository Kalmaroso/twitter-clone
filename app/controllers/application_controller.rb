class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :login, :logout, :current_user






  def login(user)
    session[:user_id] = user.id
  end

  def logout
    session.clear
  end

  def current_user
    if session[:user_id] then User.find(session[:user_id]) end
  end
end
