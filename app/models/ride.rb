# passenger <- ride -> driver
class Ride 
    @@all = [ ]
    attr_accessor :passenger,:driver , :distance
    def initiailze(passenger , driver , distance)
        @passenger = passenger
        @driver = driver 
        @distance = distance
        @@all << self
    end 
    def self.all 
        @@all 
    end 
    def ride_count
        @@all.count
    end 

    def self.average_distance
    # Returns the average distance across ALL rides
        total = 0 
        @@all.map do |ride|
            total+= ride.distance
        end
        total/ride_count
    end 

end 

