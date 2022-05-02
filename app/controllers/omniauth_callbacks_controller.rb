class OmniauthCallbacksController < ApplicationController
    def twitter
        flash:[:alert] = "success!"
    end
end