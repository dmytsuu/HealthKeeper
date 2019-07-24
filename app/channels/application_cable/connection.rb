# frozen_string_literal: true

module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verified_user
    end

    private

    def find_verified_user
      patient = Patient.find_by(id: cookies.signed['patient.id'])
      physician = Physician.find_by(id: cookies.signed['physician.id'])

      return patient || physician if patient || physician

      reject_unauthorized_connection
    end
  end
end
