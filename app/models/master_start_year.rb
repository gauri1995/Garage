class MasterStartYear < ApplicationRecord
	has_many :vehicle_start_years
	has_many :vehicles, through: :vehicle_start_years
    
end
