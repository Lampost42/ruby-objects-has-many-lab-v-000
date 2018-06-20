require 'pry'
class Artist 
  @@songs = []
  attr_accessor :name 
  def initialize(name)
    @name = name
  end
  
  def add_song(song)
    @@song << song
    song.artist = self
  end
  
  def add_song_by_name(song)
    song = Song.new(song)
    self.add_song(song)
  end
  def self.song_count
    @songs.count 
  end
end