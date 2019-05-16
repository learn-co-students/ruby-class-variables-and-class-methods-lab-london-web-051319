class Song
  attr_accessor :name , :artist , :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name , artist , genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

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
    @@genres.each do |genre_name|
      if genre_hash.has_key?(genre_name) == false
        genre_hash[genre_name]
        genre_hash[genre_name] = 0
      end
      genre_hash[genre_name] += 1
    end
    genre_hash
  end

  def self.artist_count
    @@artists.uniq.map {|artist_name| [artist_name, @@artists.count(artist_name)]}.to_h
  end
  
end
