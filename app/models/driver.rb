class Driver

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
        Ride.all.select{|rides| rides.driver == self}
    end

    def passenger_names
        rides.map{|ride| ride.passenger}.uniq
    end

    def total_distance
        rides.reduce(0){|sum, ride| sum + ride.distance}
    end

    def self.mileage_cap(num)
        @@all.select{|drivers|drivers.total_distance > num}
    end

end
