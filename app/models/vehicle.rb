class Vehicle < ApplicationRecord
	has_many :vehicle_start_years
	has_many :master_start_years, through: :vehicle_start_years
    belongs_to :car
	belongs_to :master_variant
	has_many :users
	validates :id, uniqueness: { scope: [:brand_id, :car_id , :master_variant_id] }
	
end
