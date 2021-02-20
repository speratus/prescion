class ApplicationController < ActionController::Base

    def logged_in?
        !!session[:user_id]
    end

    def current_user
        @current_user ||= User.find_by_id(session[:user_id]) if logged_in?
    end

    def require_login
        redirect_to login_path if !logged_in?
        current_user
    end
end
