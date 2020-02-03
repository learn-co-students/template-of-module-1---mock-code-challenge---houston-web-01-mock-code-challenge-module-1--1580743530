class Ride
    
    attr_accessor :driver, :passenger, :distance

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
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

    def self.average_distance
    end


end
