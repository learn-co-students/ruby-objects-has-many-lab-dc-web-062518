require 'pry'

class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self
    @songs << song
    song
    #binding.pry
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @songs << song
    song
  end

  def self.song_count
    Song.all.count
  end

  def self.all
    @@all
  end

end

#solange = Artist.new("Solange")

# binding.pry
# puts "hi"
