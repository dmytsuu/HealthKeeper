class AddColumnsToPhysicians < ActiveRecord::Migration[5.2]
  def change
    add_column :physicians, :address, :string
    add_column :physicians, :phone, :string
    add_column :physicians, :photo, :string
  end
end
