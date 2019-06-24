# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit
  include Accessible
  protect_from_forgery
  before_action :require_login

  expose :current_user, -> { current_physician || current_patient }
end
