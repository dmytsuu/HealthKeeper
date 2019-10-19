Bugno.configure do |config|
  # Specify api key to send exception to Bugno
  # config.api_key = 'JRiZ3t2w3dRWTAmF1UFPxnL5'

  # Send in background with threading:
  config.send_in_background = true

  # Skip rails related exceptions:
  config.exclude_rails_exceptions = true

  # Specify which rails exception to skip:
  config.excluded_exceptions = []

  # Specify or add usage environments:
  config.usage_environments = %w[production development]

  # Specify current user method:
  config.current_user_method = 'current_user'

  # Add scrub fields and headers:
  # config.scrub_fields << 'password'
  # config.scrub_headers << 'access_token'
end
