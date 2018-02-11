class Song
  attr_accessor :name, :artist, :genre

  @@artists = []
  @@genres = []
  @@count = 0
  @@artist_count = {}
  @@genre_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist unless @@artist.include?(artist)
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists
  end
end
