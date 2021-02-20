class LoginController < ApplicationController
  def login
  end

  def create_session
    if user = User.authenticate(login_params[:username], login_params[:password])
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
    params.require([:username, :password])
  end

end
