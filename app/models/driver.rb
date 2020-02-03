class Driver 
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
    Ride.all.select {|d| d.driver == self}
end

def passenger_names 
    rides.map {|p| p.passenger}
end 

def self.mileage_cap(distance)
    rides.find {|r| r.distance == self}
end







end
