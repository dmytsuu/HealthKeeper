# frozen_string_literal: true

module Accessible
  extend ActiveSupport::Concern

  protected

  def require_login
    unless current_physician || current_patient
      flash.clear
      redirect_to(root_url)
    end
  end

  def redirect_signed_in_user
    if physician_signed_in? || patient_signed_in?
      flash.clear
      redirect_to(dashboard_url)
    end
  end
end
