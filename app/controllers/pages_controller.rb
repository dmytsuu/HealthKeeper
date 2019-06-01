# frozen_string_literal: true

class PagesController < ApplicationController
  include Accessible
  before_action :redirect_signed_in_user
  skip_before_action :require_login

  def home; end
end
