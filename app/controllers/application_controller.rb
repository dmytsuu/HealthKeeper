# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protected

  def authenticate_admin
    authenticate_or_request_with_http_basic do |username, password|
      username == 'admin' && password == 'password'
    end
    warden.custom_failure! if performed?
  end
end
