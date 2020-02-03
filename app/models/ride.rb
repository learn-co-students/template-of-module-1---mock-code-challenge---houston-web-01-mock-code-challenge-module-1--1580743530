class Ride 
attr_accessor :driver, :passenger, :distance
@@all = []
def initialize(driver,passenger,distance)
 @driver = driver
 @passenger = passenger 
 @distance = distance 
 @@all << self
end
def self.all
    @@all
end
def average_distance
total_distance = 0.0
avg = 0.0
rides = @@all.each  {|ride| total_distance += ride.distance}
avg = total_distance.to_f/rides.length.to_f

end

end