class Ride

    attr_accessor :driver, :passenger, :distance

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance

        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        #total = @@all.reduce(0){|sum, ride| sum + ride.distance}.to_f
        (@@all.reduce(0){|sum, ride| sum + ride.distance}.to_f)/@@all.length
        #total / @@all.length
    end

end
