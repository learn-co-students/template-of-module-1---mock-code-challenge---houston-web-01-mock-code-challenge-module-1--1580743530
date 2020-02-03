class Passenger 
 attr_reader :name 
 @@all = []
def initialize(name)
@name = name 
@@all << self
end
def rides 
Ride.all.select{|ride| ride.passenger == self}
end
def self.all 
    @@all 
end
def premium_members 
Ride.all.find{|rides| rides.distance > 100}
end
end