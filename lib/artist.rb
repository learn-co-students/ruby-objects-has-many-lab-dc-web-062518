require 'pry'
require '/Users/JohnDaise/Desktop/Flatiron/ruby-objects-has-many-lab-dc-web-062518/lib/song.rb'

class Artist

attr_accessor :name, :songs, :song_count
attr_reader

@@all = []

  def initialize(name)
    @name = name
    @songs = []

  end

def name
  @name
end

  def songs
    @songs
  end

 def add_song(song)
   song.artist = self
   @songs << song
   @@all << song
 end

 def add_song_by_name(song)
   a = Song.new(song)
   a.artist = self
   self.songs << a
   @@all << song
 end


def self.song_count
  @@all.length
end

# jay_z = Artist.new("Jay-Z")
#
#  ninetynine_problems = Song.new("99 Problems")
#  crazy_in_love = Song.new("Crazy in Love")
#
#  jay_z.add_song(ninetynine_problems)
#  jay_z.add_song(crazy_in_love)
# binding.pry


end
