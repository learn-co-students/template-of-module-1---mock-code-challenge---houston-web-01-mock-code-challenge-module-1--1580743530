require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

p1 = Passenger.new("Paul")
p2 = Passenger.new("Anam")
p3 = Passenger.new("Caleb")
p4 = Passenger.new("George")

d1 = Driver.new("Raul")
d2 = Driver.new("Steven")
d3 = Driver.new("Vidhi")
d4 = Driver.new("Jeannie")

r1 = Ride.new(d1, p1, 12)
r2 = Ride.new(d2, p2, 26)
r3 = Ride.new(d3, p3, 25)
r4 = Ride.new(d4, p4, 62)
r5 = Ride.new(d4, p1, 10)
r6 = Ride.new(d3, p2, 20)
r7 = Ride.new(d2, p3, 76)
r8 = Ride.new(d1, p4, 40)











binding.pry
