class Genre 
  
  @@all=[ ]
  
  attr_accessor :name 
  
  def initialize(name)
    @name= name
    save
  end
    
  def self.all
    @@all
  end
    
  def save
    @@all<< self
  end
  
  def songs 
    Songs.all. select {|songs|song.genre == self}
  end
  
  def artists
    songs.map {|artists| astist.}
  end
  
end
  