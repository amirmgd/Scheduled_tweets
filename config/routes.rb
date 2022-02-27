Rails.application.routes.draw do
    get "about", to:"about#index"

    get "sign_up", to:"registrations#new"

    post "sign_up", to:"registrations#create"

    root to:"main#index"

end
