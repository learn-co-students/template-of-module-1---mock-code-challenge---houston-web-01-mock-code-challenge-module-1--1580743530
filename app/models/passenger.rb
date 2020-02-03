class Passenger

    attr_reader :name
    attr_accessor :rides, :drivers, :total_distance

    RIDES = []
    DRIVERS = []
    @@all = []
    @@premium_members = []

    def initialize(name)
        @name = name
    end

    def rides=(rides)
        @rides = rides
        RIDES << rides
    end

    def drivers=(drivers)
        @drivers = drivers
        DRIVERS << drivers
    end

    def total_distance
        @total_distance = 4.5
    end

    def all
        @@all

    def self.all
        @@all << self
    end

    def self.premium_members
        
    end
end
