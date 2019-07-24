require 'application_responder'

# frozen_string_literal: true

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html, :json, :js

  include Pundit
  include Accessible
  protect_from_forgery
  before_action :require_login

  expose :current_user, -> { current_physician || current_patient }
end
