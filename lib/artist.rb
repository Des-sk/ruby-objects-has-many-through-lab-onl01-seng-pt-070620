class Artist
  
  @@all=[ ]
  
  attr_accessor :name, :genres
  
  def initialize(name)
    @name=name
    @@all<< self
    @genres= genres
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    
  end
    
  
  
  def songs
    Song.all.select {|songs| songs.artist == self}
  end
 
 def genres
    songs.map(&:genres)
  end
 
end