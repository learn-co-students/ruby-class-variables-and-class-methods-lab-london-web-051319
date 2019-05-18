class Song
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  attr_accessor :name, :artist, :genre

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      counter = @@genres.count(genre)
      genre_hash[genre] = counter
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      counter = @@artists.count(artist)
      artist_hash[artist] = counter
    end
    artist_hash
  end
end
