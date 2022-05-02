OmniAuth.config.allowed_request_methods = [:post, :get]
OmniAuth.config.silence_get_warning = true

Rails.application.config.middleware.use OmniAuth::Builder do
    provider :default_twitter, Rails.application.credentials.dig(:default_twitter,:twitter_api_key), Rails.application.credentials.dig(:default_twitter,:twitter_api_secret)
end