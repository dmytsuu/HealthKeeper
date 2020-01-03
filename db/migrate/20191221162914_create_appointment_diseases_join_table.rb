class CreateAppointmentDiseasesJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :appointments, :diseases do |t|
      t.index :appointment_id
      t.index :disease_id
    end
  end
end
