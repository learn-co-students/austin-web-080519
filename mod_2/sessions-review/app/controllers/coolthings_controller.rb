class CoolthingsController < ApplicationController
    before_action :redirect_if_not_logged_in, only: [:index]
    
    def redirect_if_not_logged_in
        user_id = session[:user_id]
        if user_id == nil
            return head(:forbidden)
        end
    end

    def index
        # user_id = session[:user_id]
        # if user_id == nil
        #     return head(:forbidden)
        # end

    end
end
