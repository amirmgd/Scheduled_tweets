class OmniauthCallbacksController < AboutController
    def twitter
        redirect_to root_path, notice:  "success!"
    end
end