class AddComplaintsToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :complaints, :string
  end
end
