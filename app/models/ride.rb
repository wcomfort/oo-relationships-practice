require "pry"

class Ride

    attr_reader :driver, :passenger, :miles

    @@all = []

    def initialize(driver, passenger, miles)
        @driver = driver
        @passenger = passenger 
        @miles = miles.to_f
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        d = self.all.map { |rides| rides.miles}.sum
        d / self.all.length
    end

end
