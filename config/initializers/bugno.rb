Bugno.configure do |config|
  config.api_key = ENV['BUGNO_API_KEY']
  config.send_in_background = true
  config.usage_environments = %w[production]
  config.current_user_method = 'current_user'
end
