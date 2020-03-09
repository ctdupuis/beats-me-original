class WelcomeController < ApplicationController
    layout "sessions"

    def home
    end

    def signup
        @user = User.new
    end

end