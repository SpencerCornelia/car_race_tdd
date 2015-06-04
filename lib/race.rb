require_relative 'car'

class Race
	attr_accessor :cars
  def initialize
  	@cars = []
  	2.times{@cars.push(Car.new)}
  	@cars[0].speed = rand(1..100)
  	@cars[1].speed = rand(1..100)
  end

  def winner
  	return @cars[0] if @cars[0].speed > @cars[1].speed
  	return @cars[1] if @cars[1].speed > @cars[0].speed
  end

  def loser
 	return @cars[0] if @cars[0].speed < @cars[1].speed
  	return @cars[1] if @cars[1].speed < @cars[0].speed
  end

end
