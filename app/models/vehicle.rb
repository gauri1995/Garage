class Vehicle < ApplicationRecord
	has_many :vehicle_start_years
	has_many :master_start_years, through: :vehicle_start_years
    belongs_to :car
	belongs_to :master_variant
	has_many :users
	validates_uniqueness_of :brand_id, :scope => [ :master_variant_id, :car_id]
end
