class SessionsController < ApplicationController


    def new
        @user = User.first
    end

    def create
        @user = User.find_by(username: params[:username])
        if !@user 
            render :new, alert: 'Username does not exist'
        end
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :new 
        end
    end

    def destroy
        session.delete :user_id 
        redirect_to root_path
    end

end