def Song
  attr_accessor :name, :artist, :genre

  @@genres = []
  @@count = 0
  @@artist_count = {}
  @@genre_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
  end
end

:@@artists, [])
Song.class_variable_set(:@@genres, [])
Song.class_variable_set(:@@count, 0)
Song.class_variable_set(:@@artist_count, {})
Song.class_variable_set(:@@genre_count, {})