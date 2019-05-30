# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :require_login

  def require_login
    redirect_to new_user_session_url unless user_signed_in?
  end
end
