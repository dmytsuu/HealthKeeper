# frozen_string_literal: true

Bugno.configure do |config|
  if Rails.env.production?
    config.api_key = 'JRiZ3t2w3dRWTAmF1UFPxnL5'
  else
    config.api_key = 'og6eytiWNm75woy1wZkkZF3B'
    config.api_url = 'http://localhost:3000'

    config.exclude_rails_exceptions = false
  end
end
