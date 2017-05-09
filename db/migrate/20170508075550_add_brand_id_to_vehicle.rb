class AddBrandIdToVehicle < ActiveRecord::Migration[5.0]
  def change
    add_reference :vehicles, :brand, foreign_key: true
  end
end
