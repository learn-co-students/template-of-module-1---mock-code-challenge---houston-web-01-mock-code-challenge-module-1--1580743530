class Passenger

    @@all = []
    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_ride(driver, distance)
        Ride.new(driver, self, distance)
    end
    
    def rides
        Ride.all.select{|ride| ride.passenger == self}
    end

    def drivers
        rides.map{|ride| ride.driver}.uniq
    end

    def total_distance
        tot_dist = 0
        rides.each{|ride| tot_dist += ride.distance}
        tot_dist
    end

    def self.premium_members
        @@all.select{|passenger| passenger.total_distance > 100}
    end
end
