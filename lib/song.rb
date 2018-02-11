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
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists  # unique array - delete any duplicates
    @@artists.to_set
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count  # {"rap" => 5, "rock" => 1, "country" => 3}
    @@genres.each do |genre|
      if @@genre_count[genre].nil?
        @@genre_count[genre] = 1
      else
        @@genre_count[genre] += 1
      end

    end
    @@genre_count
  end
end
