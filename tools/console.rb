require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
d1 = Driver.new('Ola')
d2 = Driver.new('Jon')
d3 = Driver.new('Toby')

p1 = Passenger.new('Kiki')
p2 = Passenger.new('Mike')
p3 = Passenger.new('Tina')

r1 = Ride.new(d1, p2, 5.5)
r2 = Ride.new(d2, p3, 2.5)
r3 = Ride.new(d3, p1, 1.5)
r4 = Ride.new(d2, p3, 4.1)
r5 = Ride.new(d3, p2, 3.2)
r6 = Ride.new(d1, p1, 2.1)


binding.pry
