class Ride

    attr_accessor :driver, :passenger, :distance
    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance.to_f

        @@all << self
    end

    def self.all
        @@all
    end

    
    
    def self.average_distance
        @@all.reduce(0.0) {|sum, d| (sum + d) / @@all.size} # doesn't work... 
    end
end

#FAIL