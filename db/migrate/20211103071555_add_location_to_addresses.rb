class AddLocationToAddresses < ActiveRecord::Migration[6.1]
  def change
    add_column :addresses, :location, :string
  end
end
