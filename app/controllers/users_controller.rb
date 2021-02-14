class UsersController < ApplicationController

    def create
        user = User.new(signup_params)

        if user.save
            session[:user_id] = user.id
            redirect_to '/'
        else
            render 'login/signup'
        end
    end


    private

    def signup_params
        params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
    end

end