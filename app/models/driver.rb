require "pry"

class Driver

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select{ |ride| ride.driver == self }
    end

    def passengers
        self.rides.map { |ride| ride.passenger }
    end

    def self.all
        @@all
    end

    def total_distance
        self.rides.map { |ride| ride.miles }.sum 
    end

    def self.mileage_cap(distance)
        self.all.select { |drivers| drivers.total_distance > distance }
    end

end
