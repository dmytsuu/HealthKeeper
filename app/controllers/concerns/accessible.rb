# frozen_string_literal: true

module Accessible
  extend ActiveSupport::Concern

  protected

  def redirect_signed_in_user
    if physician_signed_in? || patient_signed_in?
      flash.clear
      redirect_to(dashboard_url)
    end
  end
end
