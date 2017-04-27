class JavascriptsController < ApplicationController
	def dynamic_cars
  @cars = Car.find(:all)
end
end
