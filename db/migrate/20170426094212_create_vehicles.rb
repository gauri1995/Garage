class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.references :car
      t.references :master_variant
      t.timestamps
    end
  end
end
