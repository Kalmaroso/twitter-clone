class SessionsController < ApplicationController

  helper_method :session_params

  def create
    session_params
    @email = params[:email]
    @password = params[:password]
    @user = User.find_by(email: @email)

    if @user && @user.authenticate(@password)
      login(@user)
      flash[:notice] = "Logged in!"
      redirect_to root_path
    else
      flash[:errors] = "Invalid username and password combination!"
      redirect_to login_path
    end
  end

  def destroy
    logout
    flash[:notice] = "Logged out!"
    redirect_to root_path
  end

  def session_params
    params.permit(:email,:password)
  end
end
