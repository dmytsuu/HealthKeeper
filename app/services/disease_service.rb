# frozen_string_literal: true

class DiseaseService < ApplicationService
  def call
    nil
  end

  private

  def symptoms
    @symptoms ||= params
  end
end
