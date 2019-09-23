require_relative '../config/environment.rb'
require "pry"

def reload
  load 'config/environment.rb'
end

p1 = Passenger.new("Brad")
p2 = Passenger.new("Chad")

d1 = Driver.new("Thad")
d2 = Driver.new("Brandon")

r1 = Ride.new(d1, p1, 55)
r2 = Ride.new(d2, p2, 6.3)
r3 = Ride.new(d1, p2, 9.5)
r4 = Ride.new(d2, p1, 75)

Ride.average_distance


binding.pry
0