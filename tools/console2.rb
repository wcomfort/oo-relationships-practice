require_relative '../config/environment.rb'
require "pry"

def reload
  load 'config/environment.rb'
end

l1 = Listing.new("Studio DTLA", "Los Angeles")
l2 = Listing.new("Capitol Studio", "DC")
l3 = Listing.new("Shaw Rowhome", "DC")
l4 = Listing.new("Pearl St Apt", "Boulder")
l5 = Listing.new("Flatiron Cabin", "Boulder")
l6 = Listing.new("Beachfront Condo", "Los Angeles")

g1 = Guest.new("Bob")
g2 = Guest.new("Sandy")
g3 = Guest.new("Tyler")
g4 = Guest.new("Will")
g5 = Guest.new("John")

t1 = Trip.new(l1, g3)
t2 = Trip.new(l2, g2)
t3 = Trip.new(l3, g1)
t4 = Trip.new(l4, g3)
t5 = Trip.new(l2, g1)
t6 = Trip.new(l4, g2)
t7 = Trip.new(l4, g1)

binding.pry
0