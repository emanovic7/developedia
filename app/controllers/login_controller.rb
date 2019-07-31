class LoginController < ApplicationController

  def new

  end

  def create
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      flash["message"] = "successfully logged in as #{@user.name}!"
      redirect_to user_path(@user)
    else
      flash["message"] = "Incorrect name or password"
      redirect_to new_login_path
    end
  end



end
