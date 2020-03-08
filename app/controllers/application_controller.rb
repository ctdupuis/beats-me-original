class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    helper_method :current_user
    helper_method :user_is_authenticated
    helper_method :require_logged_in
    helper_method :check_ownership
    helper_method :my_page?

    private
  
    def user_is_authenticated
      !!current_user
    end
  
    def current_user
      User.find_by(id: session[:user_id])
    end

    def require_logged_in
      redirect_to controller: 'sessions', action: 'new', alert: "Must Log In" unless user_is_authenticated
    end

    def check_ownership(user=nil, object)
      user.id == object.user_id if user
    end

    def my_page?(user)
      current_user == user.id
    end

    def current_controller?(names)
      names.include?(current_controller)
    end

    
end
