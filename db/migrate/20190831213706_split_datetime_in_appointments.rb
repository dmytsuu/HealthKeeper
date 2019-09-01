class SplitDatetimeInAppointments < ActiveRecord::Migration[5.2]
  def change
    change_column :appointments, :attendance_date, :date
    rename_column :appointments, :attendance_date, :date
    add_column :appointments, :time, :time
  end
end
