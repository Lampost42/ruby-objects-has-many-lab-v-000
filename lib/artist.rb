require 'pry'
class Artist 
  @@songs = []
  attr_accessor :name, :songs
  def initialize(name)
    @name = name
  end
  
  def add_song(song)
    @@songs << song
    song.artist = self
  end
  
  def add_song_by_name(song)
    song = Song.new(song)
    self.add_song(song)
  end
  def self.song_count
    @@songs.count 
  end
  binding.pry
end