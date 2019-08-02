class LoginController < ApplicationController
  skip_before_action :set_auth_variables, only: [:new, :create]

  def new

  end

  def create
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      flash["message"] = "successfully logged in as #{@user.name}!"
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash["message"] = "Incorrect name or password"
      redirect_to new_login_path
    end
  end

  def destroy
    logout
    redirect_to login_path
  end

end
