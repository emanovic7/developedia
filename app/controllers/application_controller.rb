class ApplicationController < ActionController::Base
  before_action :set_auth_variables


  def home
    render "users/root"
  end

  def set_auth_variables
    @user_id = session[:user_id]
    @logged_in = !!@user_id
    if @logged_in
      @current_user = User.find(@user_id)
    end
  end

  def authorized
    if !@logged_in
      return redirect_to new_login_path
    end
  end

  def logout
    session[:user_id] = nil
  end


end
