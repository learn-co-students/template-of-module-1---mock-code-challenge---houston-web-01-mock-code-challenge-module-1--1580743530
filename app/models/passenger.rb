
class Passenger
    # attr_reader :name 
    @@all = []
    def initialize(name)
        @name = name
        @@all << self 
    end

    def name 
        @name 
    end

    def self.all 
        @@all 
    end

    def rides
        Ride.all.select{|ride| ride.passenger == self}
    end

    def drivers
        rides.map{|ride| ride.driver}
    end

    def total_distance
        total_distance = 0
        rides.each{|ride| total_distance += ride.distance}
        total_distance
    end

    def self.premium_members
        hash = Hash.new{|h,k| h[k] = 0}
        Ride.all.each{|ride| hash[ride.passenger] += ride.distance}
        hash.to_a.select{|ride| ride[1] > 100}
    end
    
end

