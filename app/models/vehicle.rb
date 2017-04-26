class Vehicle < ApplicationRecord
	belongs_to :car
	belongs_to :master_variant
end
