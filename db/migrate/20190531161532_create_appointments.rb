class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :patient, foreign_key: true
      t.references :physician, foreign_key: true
      t.integer :status
      t.date :appointment_date
      t.text :diagnose

      t.timestamps
    end
  end
end
