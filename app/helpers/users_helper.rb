module UsersHelper

    def my_page?(user)
        current_user.id == user.id
    end
end