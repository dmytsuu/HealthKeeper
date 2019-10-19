# frozen_string_literal: true

class AppointmentsController < ApplicationController
  expose :appointment
  expose :appointments, -> { current_user.appointments }
  expose :appointment_emails, -> { Physician.pluck(:email, :id) }
  expose :appointment_statuses, -> { Appointment.statuses.keys }
  expose :physicians, -> { Physician.all }
  expose :conversation, -> { Conversation.find_by(patient: appointment.patient, physician: appointment.physician) }

  def new; end

  def edit; end

  def create
    authorize(appointment, :create?)
    appointment.patient = current_patient
    if appointment.save
      flash[:success] = 'created'
      redirect_to action: :index
    else
      flash[:error] = appointment.errors.full_messages.to_sentence
      render :new
    end
  end

  def update
    authorize(appointment, :update?)
    if appointment.update(appointment_params)
      flash[:success] = 'updated'
    else
      render appointment
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:physician_id, :date, :time, :status, :diagnose)
  end
end
