class  Driver 

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all 
        @@all 
    end

    def rides
        Ride.all.select {|ride| ride.driver == self}
    end

    def passenger_names
        rides.map do |ride|
            ride.passenger.name
        end
    end

    def self.mileage_cap(distance)
        Ride.all.map do |ride|
            ride.distance > disatance.to_f
        end
    end
end

# FAIL!!!!
