Rails.application.routes.draw do
 get "about", to:"about#index"
 root to:"main#index"
end
