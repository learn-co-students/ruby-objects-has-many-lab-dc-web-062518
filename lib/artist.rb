class Artist

attr_accessor :name
attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@all << song
  end


  def add_song_by_name(song_name)
    a = Song.new(song_name)
    @songs << a
    a.artist = self
    @@all << a
  end

  def self.song_count
    @@all.length
  end



end
