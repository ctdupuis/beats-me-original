class UsersController < ApplicationController
    before_action :set_user, only: [:show]


    def create
        @user = User.create(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :'welcome/signup'
        end
    end

    def show
        @albums = Album.user_owns(@user)
    end

    private

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:email, :username, :password)
    end

end