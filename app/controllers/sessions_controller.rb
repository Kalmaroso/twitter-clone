class SessionsController < ApplicationController

  helper_method :session_params

  def create
    session_params
    @email = params[:email]
    @password = params[:password]
    @user = User.find_by(email: @email)
    if @user.authenticate(@password)
      login(@user)
      redirect_to root_path
    else
      redirect_to login
    end
  end

  def destroy
    logout
    redirect_to root_path
  end

  def session_params
    params.permit(:email,:password)
  end
end
