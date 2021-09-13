module InitVehicle
  def initialize
    @speed = 0
    @direction = "north"
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

class Car
  include InitVehicle
  attr_accessor :speed, :direction

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include InitVehicle
  attr_accessor :speed, :direction

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new
bike = Bike.new
car.brake
puts car.speed
car.honk_horn
bike.accelerate
puts bike.speed
bike.ring_bell
