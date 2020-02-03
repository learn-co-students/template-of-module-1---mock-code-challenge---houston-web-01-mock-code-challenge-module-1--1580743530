class Driver

    @@all = []

    def initialize(name)
        @name = name
    end

    def name
        @name
    end

    def passenger_names

    end

    def rides
        {|driver| if Ride.all.driver == self
    return}
    end

    def self.all
        @@all << self
    end

    def self.mileage_cap(distance)
    end

end
