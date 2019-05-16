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
    @@artists.uniq
  end
  def self.genres
    @@genres.uniq
  end
  def self.genre_count
    self.genres.reduce({}) do |hash, genre|
      hash[genre] = @@genres.count(genre)
      hash
    end
  end
  def self.artist_count
    self.artists.reduce({}) do |hash, artist|
      hash[artist] = @@artists.count(artist)
      hash
    end
  end
end
