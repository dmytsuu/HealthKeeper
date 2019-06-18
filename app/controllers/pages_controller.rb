# frozen_string_literal: true

class PagesController < ApplicationController
  before_action :redirect_signed_in_user
  skip_before_action :require_login

  def home; end
end
