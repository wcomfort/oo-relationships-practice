require "pry"

class Passenger

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select{ |ride| ride.passenger == self}
    end

    def drivers
        self.rides.map{ |ride| ride.driver }
    end

    def self.all
        @@all
    end

    def total_distance
        self.rides.map { |ride| ride.miles }.sum 
    end

    def self.premium_members
        self.all.select { |passenger| passenger.total_distance > 100 }   
    end

end