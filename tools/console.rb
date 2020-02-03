require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


FIRST = "Jeanetta Charity Freida Layla Vena Susann Hubert Cleopatra Suzette Everett".split(" ")
LAST = "Hunley Blackwelder Ruiz Gandara Strzelecki Borge Klopfer Raffield Boston Barcenas".split(" ")

def name_sample
  "#{FIRST.sample} #{LAST.sample}"
end

10.times do
  Driver.new(name_sample)
end
20.times do
  Passenger.new(name_sample)
end
200.times do
  Passenger.all.sample.take_a_ride
end

puts "Average distance is #{Ride.average_distance.round(2)} miles"

drivers = Driver.mileage_cap(50).sort{|a,b|  b.mileage <=> a.mileage}
puts "Best drivers are:"
drivers.each{ |driver|
  puts "   #{driver.name} took #{driver.rides.length} rides with #{driver.passengers.length} passengers for #{driver.mileage.round(2)} miles"
}
passengers = Passenger.premium_members.sort{|a,b|  b.total_distance <=> a.total_distance}
puts "Best passengers are:"
passengers.each{ |passenger|
  puts "   #{passenger.name} took #{passenger.rides.length} rides with #{passenger.drivers.length} drivers for #{passenger.total_distance.round(2)} miles"
}


# Put your variables here~!

# binding.pry
