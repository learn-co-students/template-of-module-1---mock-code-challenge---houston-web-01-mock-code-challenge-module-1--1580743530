require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

d1 = Driver.new("paul")
d2 = Driver.new("caleb")
d3 = Driver.new("cornelius")

p1 = Passenger.new("anam")
p2 = Passenger.new("mitchell")
p3 = Passenger.new("gian")
p4 = Passenger.new("stephen")

p1r1 = p1.new_ride(d1, 15)
p1r2 = p1.new_ride(d2, 20)
p1r3 = p1.new_ride(d3, 74)

p2r1 = p2.new_ride(d1, 4)
p2r2 = p2.new_ride(d1, 7)
p2r3 = p2.new_ride(d3, 30)

p3r1 = p3.new_ride(d2, 5)
p3r2 = p3.new_ride(d2, 3)
p3r3 = p3.new_ride(d3, 10)
p3r4 = p3.new_ride(d1, 45)

p4r1 = p4.new_ride(d1, 450)

binding.pry
0