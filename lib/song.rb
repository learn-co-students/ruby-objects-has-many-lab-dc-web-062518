class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @artist = artist
  end

  def self.all
    @@all
  end

  def artist_name
    # binding.pry
    if self.artist
      self.artist.name
     else
       self.artist
    end
  end

end
