class AddSymptomsToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :symptoms, :string, array: true
  end
end
