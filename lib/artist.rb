require 'pry'

class Artist

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    # binding.pry
    song.artist = self
    @songs << song
    @@all << song
  end

  def add_song_by_name(song_name)
    # binding.pry
    #[<Artist:0x00007fe5691ae428
    # @name="Adele",
    # @songs=[#<Song:0x00007fe5691ae2c0
    #     @name="Rolling in the Deep",
    #     @artist=nil>]
    song = Song.new(song_name)
    song.artist = self
    self.songs << song
    @@all << song_name
  end

  def self.song_count
    # binding.pry
    @@all.length
  end

end
