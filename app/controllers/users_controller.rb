class UsersController < ApplicationController


    def create
        @user = User.create(user_params)
        if @user.save
            redirect_to "/users/home"
        else
            render :'welcome/signup'
        end
    end

    def home
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :password, :username, :email)
    end

end