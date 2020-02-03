class Driver 
attr_accessor :name
@@all = []
def initialize(name)
@name = name  
@@all << self 
end
def passenger_names 
 Passgener.all.select { |passenger| passenger.names == self }.uniq
end
def rides 
Rides.all.select{|ride| ride.driver == self}
end
def self.all 
@@all
end
def mileage_cap(distance)
    Ride.all.select{|ride| ride.distance > distance && ride.driver == self}
end
end