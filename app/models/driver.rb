class Driver 
    @@all = []
    def initialize(name)
        @name = name 
        @@all << self
    end

    def self.all
        @@all
    end

    def name 
        @name 
    end

    def rides
        Ride.all.select{|ride| ride.driver == self}
    end

    def passenger_names
        rides.map{|ride| ride.passenger.name}.uniq
    end

    def self.mileage_cap(distance)
        hash = Hash.new{|h,k| h[k] = 0}
        Ride.all.each{|ride| hash[ride.passenger] += ride.distance}
        hash.to_a.select{|driver| driver[1] > distance}.map{|driver| driver[0]}
    end

end



