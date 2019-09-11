class UsersController < ApplicationController
    def create
        @user = User.create(user_params)
        if !@user.errors.any?
            redirect_to @user
        end
    end
    def new
        @user = User.new
    end
    def show
        @user = User.find(params[:id])
    end
    
    private
    
    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end
end
