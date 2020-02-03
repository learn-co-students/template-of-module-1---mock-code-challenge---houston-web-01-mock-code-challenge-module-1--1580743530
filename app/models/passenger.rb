class Passenger 
attr_accessor :name
@@all = []

def initialize(name)
    @name = name
    @@all << self
end 

def self.all
    @@all
end

def rides
    Ride.all.select {|p| p.passenger == self}
end

def drivers
    rides.select {|p| p.passenger == self}
end


def total_distance 
    rides.find {|p| sum += passenger}
end
















end
