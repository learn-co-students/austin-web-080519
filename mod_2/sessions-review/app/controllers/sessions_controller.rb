class SessionsController < ApplicationController
    def new
    end
    def show
    end
    def create
        @user = User.find_by(username: params[:username])
        return head(:forbidden) unless @user.authenticate(params[:password])
        session[:user_id] = @user.id
        # We could instead give them a secure value here!
        # But rails handles this for us :) Look at 
        # Chrome Console: Application > Cookies to check
        redirect_to user_path(@user)
    end
end
