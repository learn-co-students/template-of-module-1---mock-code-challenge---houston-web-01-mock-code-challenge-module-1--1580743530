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
        Ride.all.select{|rides|rides.passenger == self}
    end

    def drivers
        rides.map{|ride| ride.driver}
    end

    def total_distance
        rides.reduce(0){|sum, ride| sum + ride.distance}
    end

    def self.premium_members
        @@all.select{|passengers| passengers.total_distance > 100}
    end

end
