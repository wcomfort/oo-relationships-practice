require "pry"

class Guest

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end

    def self.all 
        @@all
    end

    def trips
        Trip.all.select{ |trip| trip.guest == self }
    end

    def listings
        self.trips.map { |trip| trip.listing }
    end

    def trip_count
        tc = self.trips
        tc.count
    end

    def self.pro_traveler
        self.all.select { |name| name.trip_count > 1 }
    end

    def self.find_all_by_name(name)
        self.all.select{ |guest| guest.name == name}
    end

end
