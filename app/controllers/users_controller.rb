class UsersController < ApplicationController
    before_action :set_user, only: [:show]
    before_action :require_logged_in, only: [:my_page]
    layout "sessions"


    def create
        @user = User.create(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to my_page_path
        else
            render :'welcome/signup'
        end
    end

    def show
        @albums = Album.user_owns(@user.id)
    end

    def my_page
        @submissions = current_user.albums
    end

    private

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:email, :username, :password)
    end

end