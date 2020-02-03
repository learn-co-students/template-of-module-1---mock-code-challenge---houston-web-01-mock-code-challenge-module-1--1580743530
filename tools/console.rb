require_relative '../config/environment.rb'

require 'pry'
require_relative '../config/environment.rb'
# require_relative 'passenger.rb'
# require_relative 'ride.rb'
# def reload
#   load 'config/environment.rb'
# end
# Put your variables here~!
driver1 = Driver.new("Chase")
passenger1 = Passenger.new("Jase")
ride1 = Ride.new(driver1,passenger1,100)
driver2 = Driver.new("Dave")
passenger2 = Passenger.new("Jake")
ride2 = Ride.new(driver2,passenger2,500)
binding.pry
