require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

d1 = Driver.new("Dustin")
d2 = Driver.new("Damian")
d3 = Driver.new("David")

p1 = Passenger.new("Placido")
p2 = Passenger.new("Paul")
p3 = Passenger.new("Patricia")
p4 = Passenger.new("Patrick")

r1 = Ride.new(d1, p1, 4.5)
r2 = Ride.new(d2, p3, 17.0)
r3 = Ride.new(d2, p4, 3.6)
r4 = Ride.new(d3, p2, 27.1)
r5 = Ride.new(d2, p1, 7.8)
r6 = Ride.new(d3, p1, 98.4)
r7 = Ride.new(d1, p3, 170.8)

binding.pry
