
class Driver

  attr_accessor :name, :rides, :passengers

  @@all = []

  def initialize(name)
    self.name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select { |r| r.driver == self }
  end

  def passengers
    rides.map { |r| r.passenger }
  end

  def total_miles_driven
    rides.sum { |r| r.distance }
  end  

  def self.mileage_cap(distance)
    @@all.select { |d| d.total_miles_driven > distance }
  end  

end  


