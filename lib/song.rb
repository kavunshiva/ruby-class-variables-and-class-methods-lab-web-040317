class Song
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name
  attr_accessor :genre
  attr_accessor :artist

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.counter(thing_array)
    thing_hash = {}
    thing_array.each do |thing|
      if thing_hash[thing] == nil
        thing_hash[thing] = 1
      else
        thing_hash[thing] += 1
      end
    end
    thing_hash
  end

  def self.genre_count
    self.counter(@@genres)
  end

  def self.artist_count
    self.counter(@@artists)
  end
end
