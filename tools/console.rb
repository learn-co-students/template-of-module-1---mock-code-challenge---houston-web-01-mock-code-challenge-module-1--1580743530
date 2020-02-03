require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

p1 = Passenger.new("p1")
p2 = Passenger.new("p2")
p3 = Passenger.new("p3")
p4 = Passenger.new("p4")
p5 = Passenger.new("p5")
p6 = Passenger.new("p6")
p7 = Passenger.new("p7")

r1 = Driver.new("r1")
r2 = Driver.new("r2")
r3 = Driver.new("r3")
r4 = Driver.new("r4")

rd1 = Ride.new(p1,r2,30)
rd2 = Ride.new(p1,r3,20)
rd3 = Ride.new(p2,r2,60)
rd4 = Ride.new(p3,r2,13)
rd5 = Ride.new(p7,r2,15)
rd6 = Ride.new(p2,r2,21.5)
rd7 = Ride.new(p6,r2,14)
rd8 = Ride.new(p4,r2,20)




# Put your variables here~!

binding.pry
0
