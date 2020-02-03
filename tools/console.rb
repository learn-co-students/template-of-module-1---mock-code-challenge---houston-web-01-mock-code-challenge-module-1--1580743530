require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

p1 = Passenger.new("Todd")
p2 = Passenger.new("Sarah")
p3 = Passenger.new("Phil")
p4 = Passenger.new("Ana")

d1 = Driver.new("Chris")
d2 = Driver.new("Melissa")


r1 = Ride.new(5.2, p1, d2)
r2 = Ride.new(8.2, p2, d1)
r3 = Ride.new(112.4, p3, d2)
r4 = Ride.new(35.2, p1, d1)

puts "All Drivers:"
puts Driver.all
puts ""
puts "All Passengers:"
puts Passenger.all
puts ""
puts "All Rides:"
puts Ride.all
puts ""
puts "Total Distance For Passengers:"
puts p1.total_distance
puts p2.total_distance
puts p3.total_distance
puts p4.total_distance
puts ""
puts "Premium Members:"
puts Passenger.premium_members
puts ""

puts d1.total_miles_driven
puts Driver.mileage_cap(10)
puts Driver.mileage_cap(100)

binding.pry
