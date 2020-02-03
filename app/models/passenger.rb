class Passenger

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select { |ride|
            ride.passenger == self
        }
    end

    def drivers
        rides.map { |ride|
            ride.driver
        }.uniq
    end

    def total_distance
        rides.sum { |sum=0, ride|
            sum = sum + ride.distance
        }
    end

    def take_a_ride
        Ride.new(Driver.all.sample,self,rand(0.5..20.1))
    end

    def self.all
        @@all
    end

    def self.premium_members
        @@all.select { |passenger|
            passenger.total_distance > 100
        }
    end

    
end



# #### Passenger
# A Passenger should be initialized with a name as a string. After the Passenger has been initialized, it shouldn't be changed.
# - `Passenger#name`
#   - Returns the name of the passenger
# - `Passenger#rides`
#   - Returns an array of Ride instances that this person has been on
# - `Passenger#drivers`
#   - Returns an array of Driver instances that this person has rode with
# - `Passenger#total_distance`
#   - Returns the floating number that represents the total distance the passenger has travelled using the service
# - `Passenger.all`
#   - Returns an array of all Passengers
# - `Passenger.premium_members`
#   - Returns an array of all Passengers who have travelled over 100 miles in total with the service
