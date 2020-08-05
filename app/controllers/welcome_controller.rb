class WelcomeController < ApplicationController
    # layout "sessions"

    def home
        # binding.pry
    end

    def signup
        @user = User.new
    end

end