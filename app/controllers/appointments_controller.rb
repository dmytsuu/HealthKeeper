# frozen_string_literal: true

class AppointmentsController < ApplicationController
  expose :appointment
  expose :appointments, -> { current_user.appointments }
  expose :appointment_physicians, -> { Physician.all }
  expose :appointment_statuses, -> { Appointment.statuses.keys }
  expose :physicians, -> { Physician.all }
  expose :conversation, -> { Conversation.find_by(patient: appointment.patient, physician: appointment.physician) }

  def create
    authorize(appointment, :create?)
    appointment.patient = current_patient
    assign_diseases
    return redirect_to appointment_path(appointment) if appointment.save

    render :new
  end

  def update
    authorize(appointment, :update?)
    return redirect_to appointment_path(appointment) if appointment.update(appointment_params)

    render edit_appointment_path(appointment)
  end

  private

  def assign_diseases
    diseases = Disease.by_symptoms(appointment_params[:symptoms].reject(&:empty?))
    appointment.diseases << diseases if diseases.any?
  end

  def appointment_params
    params.require(:appointment).permit(:physician_id, :date, :time, :status, :diagnose, symptoms: [])
  end
end
