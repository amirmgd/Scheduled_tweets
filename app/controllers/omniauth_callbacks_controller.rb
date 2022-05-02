class OmniauthCallbacksController < ApplicationController
    def twitter
        render plain: "success!"
    end
end