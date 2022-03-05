class SessionsController < ApplicationController
    def new
    end
    
    def create
        user = User.find_by(email: params[:email])
        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to root_path, notice:"ورود با موفقیت انجام شد"
        else
            flash[:alert] = "آدرس ایمیل یا رمز عبور اشتباه است"
            render :new
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice:"از حساب خود خارج شدید"
    end
end