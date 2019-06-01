# frozen_string_literal: true

module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_patient
  end

  protected

  def check_patient
    if current_physician
      flash.clear
      # if you have rails_physician. You can redirect anywhere really
      redirect_to(root_url) && return
    elsif current_patient
      flash.clear
      # The authenticated root path can be defined in your routes.rb in: devise_scope :patient do...
      redirect_to(root_url) && return
    end
  end
end
