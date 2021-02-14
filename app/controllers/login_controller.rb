class LoginController < ApplicationController
  def login
  end

  def signup
    @user = User.new
  end
end
