OmniAuth.config.allowed_request_methods = [:post, :get]
OmniAuth.config.silence_get_warning = true

Rails.application.config.middleware.use OmniAuth::Builder do
    provider :twitter,Rails.application.credentials.dig(:twitter,:api_key), Rails.application.credentials.dig(:twitter,:api_secret)
end