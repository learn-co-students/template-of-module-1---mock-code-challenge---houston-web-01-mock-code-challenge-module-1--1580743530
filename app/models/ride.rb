
class Ride

  attr_accessor :distance, :passenger, :driver

  @@all = []

  def initialize(distance, passenger, driver)
    self.distance = distance
    self.passenger = passenger 
    self.driver = driver
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    @@all.distance.inject(0.0) { |sum, el| sum + el } / @@all.distance.size
  end  

end  
