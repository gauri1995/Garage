class VehicleStartYear < ApplicationRecord
  belongs_to :master_start_year
  belongs_to :vehicle
end
