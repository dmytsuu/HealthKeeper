require 'application_responder'

# frozen_string_literal: true

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html, :json, :js

  include Pundit
  include Accessible
  protect_from_forgery
  before_action :require_login
  before_action :configure_permitted_parameters, if: :devise_controller?

  expose :current_user, -> { current_physician || current_patient }

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: [:email, :password, :password_confirmation, :name, :surname, :weight,
                                             :height, :age, :blood_type, parent_attributes: %i[name surname]])
  end
end
