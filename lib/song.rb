class Song
  attr_accessor :artist, :genre
  attr_accessor :name

  @@all = []

  def initizlize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end
end
