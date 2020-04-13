module PostsHelper
    def show_username
        @user_email = current_user.email.split('@')[0].upcase
    end
end
