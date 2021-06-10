class Vehicle
  attr_accessor :speed, :direction
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  # attr_accessor :make, :model, :color
  def initialize(input_options)
    super
    @make = input_options[:make]
    @model = input_options[:model]
    @color = input_options[:color]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  # attr_accessor :brand, :model, :color
  def initialize(input_options)
    super
    @brand = input_options[:brand]
    @model = input_options[:model]
    @color = input_options[:color]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new(make: "Nissan", model: "Sentra", color: "blue")
bike = Bike.new(brand: "Haro", model: "Freestyler", color: "purple")
puts car.speed
puts bike.speed
car.accelerate
bike.accelerate
puts car.speed
puts bike.speed
car.honk_horn
bike.ring_bell
puts car.make
puts car.model
puts car.color
puts bike.make
puts bike.model
puts bike.color
