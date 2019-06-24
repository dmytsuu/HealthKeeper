# frozen_string_literal: true

class AppointmentPolicy < ApplicationPolicy
  def create?
    !user.nil?
  end

  alias update? create?
end
