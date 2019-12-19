class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genre
    songs.all.map do |song|
      if song.artist == self
        song.genre
      end
    end
  end

  def new_song
    song = Song.new(name, self, genre)
  end
end
