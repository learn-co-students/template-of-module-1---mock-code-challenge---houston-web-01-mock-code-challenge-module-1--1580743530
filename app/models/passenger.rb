class Passenger

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select {|ride| ride.passenger == self}
    end

    def drivers
        rides.map do |ride|
            ride.driver.name
        end
    end

    def total_distance
        rides.map do |ride| 
            ride.distance # add these together... 
        end
    end

    def self.premium_members
        Ride.all.select do |ride|
            ride.passenger.distance > 100
        end
    end

end

#FAIL
