class Genre 
  
  @@all=[ ]
  
  attr_accessor :name 
  
  def initialize(name)
    @name= name
    save
    
  def self.all
    @@all
  end
    
  def save
    @@all<< self
  end
  
  def song 
    Songs.all. select {|songs|song.genre == self}
  end
  
  def artists
    
  end
  
end
  