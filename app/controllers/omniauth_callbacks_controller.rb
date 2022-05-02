class OmniauthCallbacksController < ApplicationController
    def twitter
        redirect_to sign_in_path
    end
end