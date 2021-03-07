class LoginController < ApplicationController
  def login
  end

  def create_session
    user = User.find_by(username: login_params[:username])
    if user.authenticate(login_params[:password])
      session[:user_id] = user.id
      redirect_to "/"
    else
      redirect_to login_path
    end
  end

  def signup
    @user = User.new
  end

  private

  def login_params
    params.permit(:username, :password)
  end

end
