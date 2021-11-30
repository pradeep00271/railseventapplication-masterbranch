class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.references :imageable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
