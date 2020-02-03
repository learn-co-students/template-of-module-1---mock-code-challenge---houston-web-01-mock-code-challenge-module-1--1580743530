
# passenger <- ride -> driver
class Passenger 
    @@all = [ ]
    attr_reader :name
    def initiailze (name)
        @name =name
        @@all << self 
    end
    def self.all 
        @@all 
    end 
    def rides 
        # Returns an array of Ride instances that this person has been on
        Ride.all.select do |ride|
            ride.passenger == self
        end
    end 
        def drivers
            # Returns an array of Driver instances that this person has rode with
            rides.map do |ride|
                ride.driver 
            end 
        end 
        def total_distance
            # Returns the floating number that represents the total distance the passenger has travelled using the service
            total = 0
            rides.map do  |ride|
                total += ride.distance 
            end 
            total
        end
        def self.premium_members
            # Returns an array of all Passengers who have travelled over 100 miles in total with the service
            self.all.select do |pass|
                pass.total_distance >100
            end 
        end 
        
    end  
end 


