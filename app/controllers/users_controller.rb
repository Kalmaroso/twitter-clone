class UsersController < ApplicationController
helper_method :user_params

  def new
    @user = User.new
  end


  def create
    @user = User.new(user_params)
    if @user.save
      login(@user)
      flash[:notice] = "User created!"
      redirect_to root_path
    else
      flash[:errors] = @user.errors
      redirect_to signup_path
    end
  end


  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :profile_pic)
  end
end
