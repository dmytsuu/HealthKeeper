class AddPhotoToPatient < ActiveRecord::Migration[5.2]
  def change
    add_column :patients, :photo, :string
  end
end
