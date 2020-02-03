class Ride 
    @@all = []
    def initialize(passenger,driver,distance)
        @passenger = passenger
        @driver = driver
        @distance  = distance
        @@all << self
    end

    def passenger
        @passenger
    end

    def driver 
        @driver
    end

    def distance
        @distance
    end

    def self.all 
        @@all
    end

    def self.average_distance
        total = 0
        @@all.each{|ride| total += ride.distance}
        total / @@all.length.to_f
    end

end

