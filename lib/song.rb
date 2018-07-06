#require 'pry'

class Song

  @@all = []

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end

end

# cranes = Song.new("Cranes In The Sky", "Solange")
# solange = Artist.new("Solange")
# cranes.artist = solange

# binding.pry
# puts "hi"
