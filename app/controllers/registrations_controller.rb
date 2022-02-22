class RegistrationsController < AboutController
    def new
        @user= User.new
    end

end