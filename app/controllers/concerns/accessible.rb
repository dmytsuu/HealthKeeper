# frozen_string_literal: true

module Accessible
  extend ActiveSupport::Concern

  protected

  def require_login
    return if current_physician || current_patient

    flash.clear
    redirect_to(root_path)
  end

  def redirect_signed_in_user
    return unless physician_signed_in? || patient_signed_in?

    flash.clear
    redirect_to(dashboard_path)
  end

  def authenticate_admin
    authenticate_or_request_with_http_basic do |username, password|
      username == 'admin' && password == 'password'
    end
    warden.custom_failure! if performed?
  end
end
