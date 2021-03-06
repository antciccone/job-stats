class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      flash[:notice] = "You have successfully logged in!"
      redirect_to dashboard_path
    else
      flash[:notice] = user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
