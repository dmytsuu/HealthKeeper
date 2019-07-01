# frozen_string_literal: true

class AppointmentsController < ApplicationController
  expose :appointment
  expose :appointments, -> { current_user.appointments }
  expose :appointment_emails, -> { Physician.pluck(:email, :id) }
  expose :appointment_statuses, -> { Appointment.statuses.keys }
  expose :physicians, -> { Physician.all }

  def new; end

  def edit; end

  def create
    authorize(appointment, :create?)
    appointment.patient = current_patient
    if appointment.save
      flash[:success] = 'Appoinment created'
      redirect_to action: :index
    else
      render :new
    end
  end

  def update
    authorize(appointment, :update?)
    if appointment.update(appointment_params)
      flash[:success] = 'Appoinment updated'
      redirect_to action: :index
    else
      render :edit
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:physician_id, :attendance_date, :status)
  end
end
