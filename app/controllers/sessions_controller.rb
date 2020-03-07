class SessionsController < ApplicationController

    def new
        # byebug
        # @user = User.find_by(username: params[:username])
    end

    def create
        # byebug
        if auth_hash = request.env['omniauth.auth']
            @user = User.find_or_create_by_omniauth(auth_hash)
            session[:user_id] = @user.id 
            redirect_to user_path(@user)
        else
            @user = User.find_by(username: params[:username])
            # byebug
            if @user && @user.authenticate(params[:password])
                session[:user_id] = @user.id
                redirect_to user_path(@user)
            else
                render 'new'
            end
        end
    end

    def destroy
        session.delete :user_id 
        redirect_to root_path
    end


end