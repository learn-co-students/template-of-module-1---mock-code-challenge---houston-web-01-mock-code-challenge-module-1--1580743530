

# passenger <- ride -> driver
class Driver 
    @@all = [ ]
    attr_reader :name
    def initialize(name)
        @name = name
        @@all << self 
    end 
    def self.all 
        @@all 
    end
    def rides
        # Returns an array of all Rides a driver has made
        Ride.all.select do |ride|
           ride.driver == self
        end 
       end 
    
    def passenger_names
    #  Returns an array of all Passengers' names a driver has driven. The names should be **unique** (no repeats).
        rides.map do |ride|
            ride.passenger.name
        end.uniq
    
    end 
  
    def self.mileage_cap(distance)
     # Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage
        self.all.select  do |driver|
            total = 0 
            driver.rides.map do |ride|
                total+= ride.distance
            end
            total > distance
        end 
    end
    

end 
