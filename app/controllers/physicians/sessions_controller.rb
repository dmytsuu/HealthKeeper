# frozen_string_literal: true

class Physicians::SessionsController < Devise::SessionsController
  include Accessible
  before_action :redirect_signed_in_user, except: :destroy
end
