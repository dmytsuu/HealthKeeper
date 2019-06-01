# frozen_string_literal: true

class Patients::RegistrationsController < Devise::RegistrationsController
  before_action :redirect_signed_in_user
  skip_before_action :require_login
end
