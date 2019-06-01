# frozen_string_literal: true

class PagesController < ApplicationController
  include Accessible
  before_action :redirect_signed_in_user

  def home; end
end
