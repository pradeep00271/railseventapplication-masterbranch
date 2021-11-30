class AddColumnsToAddresses < ActiveRecord::Migration[6.1]
  def change
    add_column :addresses, :street_address, :string
    add_column :addresses, :city, :string
    add_column :addresses, :state, :string
    add_column :addresses, :zip, :string
    add_column :addresses, :latitude, :float
    add_column :addresses, :longitude, :float
  end
end
