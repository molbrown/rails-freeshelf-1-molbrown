class ApplicationController < ActionController::Base
    

    def current_user    
        if session[:user_id]
            @user ||= User.find(session[:user_id])
            return @user
        end
    end

    helper_method :current_user
end