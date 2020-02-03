class Driver

    @@all = []
    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select{|ride| ride.driver == self}
    end
    
    def passenger_names
        rides.map{|ride| ride.passenger.name}.uniq
    end

    # def miles_driven_long
    #     mi_drv = 0
    #     rides.each{|ride| mi_drv += ride.distance}
    #     mi_drv
    # end

    def miles_driven
        rides.map{|ride| ride.distance}.reduce(:+)
    end

    # def self.total_driver_miles_long
    #     tdm = 0
    #     all.each{|driver| tdm += driver.miles_driven}
    #     tdm
    # end

    def self.total_driver_miles
        all.map{|driver| driver.miles_driven}.reduce(:+)
    end

    def self.mileage_cap(distance)
        all.select{|driver| driver.miles_driven > distance}
    end

end
