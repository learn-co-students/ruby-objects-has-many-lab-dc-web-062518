require 'pry'

class Song

attr_accessor :name, :artist, :all

@@all = []


def initialize(name)
  @name = name
  @artist = artist
  @@all<< self
end

def self.all
  @@all
end

def artist
  @artist
end

def artist_name
  if self.artist
    self.artist.name
  else
    # binding.pry
    self.artist
  end
end








hotline_bling = Song.new("Hotline Bling")
hello = Song.new("Hello")
bailando = Song.new("Bailando")









end
