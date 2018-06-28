class Song

  attr_accessor :artist
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    Song.all << self
  end

  def artist_name
    if @artist == nil
      nil
    else
      @artist.name
    end
  end

end
