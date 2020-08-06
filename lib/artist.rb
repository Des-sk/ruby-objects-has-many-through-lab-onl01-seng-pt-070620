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
    Song.new(name, self, genre)
  end
  
  def songs
    Song.all.select {|songs| song.artist == self}
    songs
  end
 
end