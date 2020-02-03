class Driver

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select{ |ride|
            ride.driver == self
        }
    end

    def mileage 
        rides.sum { |sum = 0, ride|
            sum = sum + ride.distance
        }
    end

    def passengers
        rides.map { |ride|
            ride.passenger
        }.uniq
    end

    def passenger_names
        passengers.map { |passenger|
            passenger.name
        }.uniq
    end

    def self.all
        @@all
    end

    def self.mileage_cap(cap)
        @@all.select { |driver|
            driver.mileage > cap
        }
    end

end


# #### Driver
# A Driver should be initialized with a name as a string.
# - `Driver#name`
#   - Returns the driver's name
# - `Driver#passenger_names`
#   - Returns an array of all Passengers' names a driver has driven. The names should be **unique** (no repeats).
# - `Driver#rides`
#   - Returns an array of all Rides a driver has made
# - `Driver.all`
#   - Returns an array of all Drivers
# - `Driver.mileage_cap(distance)`
#   - Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage
