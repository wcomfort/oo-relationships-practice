require "pry"

class Listing
    
    attr_reader :name, :city

    @@all = []

    def initialize(name, city)
        @name = name
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select{ |trip| trip.listing == self }
    end

    def guests
        self.trips.map { |trip| trip.guest }
    end

    def trip_count
       tc = self.trips
       tc.count
    end

    def self.find_all_by_city(city)
        self.all.select{ |listing| listing.city == city}
    end

    def self.most_popular
        self.all.max_by{ |listing| listing.trips.count }
    end

end
