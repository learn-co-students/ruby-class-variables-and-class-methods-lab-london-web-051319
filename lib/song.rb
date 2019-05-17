class Song


@@genres = []
@@artists = []

attr_accessor :name, :artist, :genre


def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count = 3

  @@artists << @artist
  @@genres << @genre


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

def self.genreee
@@genres
end

def self.genre_count
  h = {}
  self.genres.each do |genre|
  occurrences = @@genres.count(genre)
  h[genre] = occurrences
end
h
end

def self.artist_count
  h = {}
  self.artists.each do |artist|
  occurrences = @@artists.count(artist)
  h[artist] = occurrences

end
h

end

end
