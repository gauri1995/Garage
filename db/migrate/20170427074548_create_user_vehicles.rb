class CreateUserVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :user_vehicles do |t|
      t.string :registration_number
      t.integer :year
      t.references :user
      t.references :vehicle
      t.timestamps
    end
  end
end
