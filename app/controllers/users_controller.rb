class UsersController < ApplicationController
    before_action :set_user, only: [:show]


    def create
        @user = User.create(user_params)
        if @user.save
            redirect_to user_path(@user)
        else
            render :'welcome/signup'
        end
    end

    def show
    end

    private

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:first_name, :last_name, :password, :username, :email)
    end

end