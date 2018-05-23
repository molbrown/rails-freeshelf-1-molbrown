class ApplicationController < ActionController::Base

    def current_user
        @current_user = User.find_or_create_by(username: "molbrown")
    end

    helper_method :current_user
end
