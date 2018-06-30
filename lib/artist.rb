require 'pry'
class Artist
  @@all = []
  attr_accessor :name, :post
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  def self.all
    @@all
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    #binding.pry
  end

  def self.song_count
    counter=0
    @@all.each do |array|
      counter += array.songs.count
    end
    counter
  end
end
