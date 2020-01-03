class CreateDiseases < ActiveRecord::Migration[5.2]
  def change
    create_table :diseases do |t|
      t.string :name
      t.integer :temperature_above
      t.integer :temperature_below
      t.string :blood_types
      t.string :symptoms, array: true

      t.timestamps
    end
  end
end
