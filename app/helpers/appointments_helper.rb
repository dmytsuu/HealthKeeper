# frozen_string_literal: true

module AppointmentsHelper
  def symptom_checkboxes
    Disease::SYMPTOMS.map { |d| [d, d.humanize] }
  end

  def appointment_date
    Date.tomorrow
  end

  def appointment_time
    3.hours.from_now
  end
end
