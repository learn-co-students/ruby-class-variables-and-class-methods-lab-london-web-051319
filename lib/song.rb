class Song

attr_accessor :name, :artist, :genre

@@artists = []
@@count = 0
@@genres = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@artists << artist
  @@count += 1
  @@genres << genre
end

def self.count
  @@count
end

def self.artists
  @@artists.uniq
end

def self.genres
  @@genres.uniq
end

def self.genre_count
  @@genres.uniq.map {|genres| [genres, @@genres.count(genres)]}.to_h
end

def self.artist_count
  @@artists.uniq.map {|artists| [artists, @@artists.count(artists)]}.to_h
end

end
