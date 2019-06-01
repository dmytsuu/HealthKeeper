# frozen_string_literal: true

class Patients::RegistrationsController < Devise::RegistrationsController
  include Accessible
  before_action :redirect_signed_in_user
end
