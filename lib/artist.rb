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
  
  def new_song(name, self, genre)
    
    
    #Song.new
    #song.new = self
    #Song.new = name, self, genre)
    #song.new= :name(:genre)
    #ninety_nine_problems = jay_z.new_song("Ninety Nine Problems", rap)
   end
   
  # def add_song(song)
  #   song.artist = self
  # end

  
  def songs
    Song.all.select {|songs| songs.artist == self}
  end
 
end