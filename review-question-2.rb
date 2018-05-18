require 'pry'
# Finish the implementation of the Car class so it has the functionality described below

class Car

  ALL = []

  attr_reader :make, :model
  attr_accessor :drive

  def initialize(make, model)
    @make = make
    @model = model

    ALL << self
  end

  def self.all
    ALL
  end

end

car = Car.new("volvo", "lightening")

puts car.make
#=> "volvo"
puts car.model
#=> "ligthening"

car.drive = "VROOOOOOOOOOOOM!"
puts car.drive
# => "VROOOOOOOOOOOOM!"

ford = Car.new("ford", "falcon")
ford.drive = "Fix Or Repair Daily"

cadillac = Car.new("caddy", "seville")
cadillac.drive = "your father's car"

puts "\nALL CARS\n #{Car.all}"
#=> [car1, car2, car3]

# BONUS:
#
# Car.new(make: "volvo", model: "lightening")
#
# car.make
# #=> "volvo"
# car.model
# #=> "ligthening"
