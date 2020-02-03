require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

p1 = Passenger.new("Jerry")
p2 = Passenger.new("Tom")
p3 = Passenger.new("Cody")
p4 = Passenger.new("Chris")
p5 = Passenger.new("Antonio")
p6 = Passenger.new("Leasette")

d1 = Driver.new("Jose")
d2 = Driver.new("George")
d3 = Driver.new("Greg")
d4 = Driver.new("Cindy")
d5 = Driver.new("David")
d6 = Driver.new("John")

r1 = Ride.new(d1, p3, 40)
r2 = Ride.new(d6, p3, 70)
r3 = Ride.new(d4, p1, 15)
r4 = Ride.new(d5, p4, 5)
r5 = Ride.new(d6, p2, 6)
r6 = Ride.new(d3, p6, 13)


# Put your variables here~!

binding.pry
