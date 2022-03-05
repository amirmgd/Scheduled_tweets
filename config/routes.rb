Rails.application.routes.draw do
    get "about", to:"about#index"

    get "sign_up", to:"registrations#new"
    post "sign_up", to:"registrations#create"
    delete "logout", to: "sessions#destroy"

    get "sign_in", to:"sessions#new"
    post "sign_in", to:"sessions#create"

    root to:"main#index"

end
