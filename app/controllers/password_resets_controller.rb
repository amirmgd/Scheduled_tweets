class PasswordResetsController < ApplicationController

    def new
    
    end

    def create
        @user = User.find_by(email: params[:email])

        if @user.present?
            #send email
            PasswordMailer.with(user: @user).reset.deliver_later
        end
        redirect_to root_path, notice: "در صورت وجود حساب کاربری با آدرس ایمیل وارد شده،لینکی برای بازنشانی رمز عبور برای شما فرستاده خواهد شد"
    end

    def edit
        @user =  User.find_signed!(params[:token],purpose:"password_reset")
    rescue ActiveSupport::MessageVerifier::InvalidSignature
        redirect_to sign_in_path, alert:"لینک شما منقضی شده است،لطفا دوباره امتحان کنید."
    end

    def update
        @user = User.find_signed!(params[:token],purpose:"password_reset")
    end
end 