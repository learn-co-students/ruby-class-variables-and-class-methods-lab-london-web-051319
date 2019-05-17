require "pry"
class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq!
    end

    def self.genres
        @@genres.uniq!
    end

    def self.genre_count
        genres_hash = Hash.new(0)
        @@genres.each do |x|
            genres_hash[x] += 1
        end
        genres_hash
    end
    #binding.pry

    def self.artist_count
        artists_hash = Hash.new(0)
        @@artists.each do |x|
            artists_hash[x] += 1
        end
        artists_hash
    end
end