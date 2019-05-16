class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(song_title, song_artist, genre_of_song)
    @name = song_title
    @artist = song_artist
    @genre = genre_of_song
    @@count += 1
    @@artists << song_artist
    @@genres << genre_of_song
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists = @@artists.uniq
  end

  def self.genres
    @@genres = @@genres.uniq
  end

  def self.genre_count
    new_hash = Hash.new
    @@genres.each do |song_genre|
      if new_hash.has_key?(song_genre) == false
        new_hash[song_genre] = 0
      end
      new_hash[song_genre] += 1
    end
    new_hash
  end

  def self.artist_count
    artist_hash = Hash.new
    @@artists.each do |number_of_songs|
      if artist_hash.has_key?(number_of_songs) == false
        artist_hash[number_of_songs] = 0
      end
      artist_hash[number_of_songs] += 1
  end
  artist_hash
  end
end
