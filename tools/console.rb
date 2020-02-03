require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


driver1 = Driver.new("Sumaya")
driver2 = Driver.new("Khalil")
driver3 = Driver.new("Ali")
driver4 = Driver.new("Mohammed")
driver5 = Driver.new("Ahmed")

passenger1 = Passenger.new("Ali")
passenger2 = Passenger.new("fakhr")
passenger3 = Passenger.new("Mona")
passenger4 = Passenger.new("Sugar")
passenger5 = Passenger.new("Zaianb")


ride1 = new(passenger1 , driver1 , 67)
ride2 = new(passenger3 , driver4 , 7)
ride4 = new(passenger1 , driver4 , 30)
ride5 = new(passenger2 , driver2 , 23)
ride6 = new(passenger5 , driver4 , 56)







binding.pry
