class Post 
  @@all = []
  attr_accessor :title, :author 
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def artist_name
    self.artist ? self.artist.name : nil
  end
end