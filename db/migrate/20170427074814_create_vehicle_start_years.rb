class CreateVehicleStartYears < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicle_start_years do |t|
      t.references :master_start_year, foreign_key: true
      t.references :vehicle, foreign_key: true

      t.timestamps
    end
  end
end
