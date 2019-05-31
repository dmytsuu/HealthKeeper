class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.references :patient, foreign_key: true
      t.references :doctor, foreign_key: true
      t.integer :status
      t.date :attending_day
      t.text :diagnose

      t.timestamps
    end
  end
end
