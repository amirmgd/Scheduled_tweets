class ApplicationController < ActionController::Base
   before_action :set_current_user
   
    def set_current_user
        if session[:user_id]
            Current.user = User.find(session[:user_id])
        end
    end
end
