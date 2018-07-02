class Artist

  attr_accessor :name

  @@total_songs = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@total_songs << song
    song.artist = self
  end

  def add_song_by_name(song_title)
    song = Song.new(song_title)
    self.add_song(song)
  end

  def songs
    @songs
  end

  def self.song_count
    @@total_songs.length
  end

end
