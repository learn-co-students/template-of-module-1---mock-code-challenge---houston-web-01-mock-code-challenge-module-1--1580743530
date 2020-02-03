class Ride

    @@all = []
    attr_reader :passenger, :driver, :distance

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance.to_f
        @@all << self
    end

    def self.all
        @@all
    end

    def self.total_distance
        @@all.map{|ride| ride.distance}.reduce(:+)
    end

    def self.average_distance
        total_distance/@@all.count
    end
end
