class RegistrationsController < AboutController
    def new
        @user= User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to root_path, notice: "ثبت نام با موفقیت انجام شد"
        else
            render :new
        end
    end

    private

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end

end