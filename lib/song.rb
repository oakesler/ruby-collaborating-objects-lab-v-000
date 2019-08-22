class Song 
  
  attr_accessor :name, :artist, :songs #:filename
  
  @@all = []
  
  def initialize(name = @name)
    @name = name
    @@all << self
    #@@all << name 
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    #binding.pry
    song = self.new(filename.split(" - ")[1])
    song.artist.name = filename.split(" - ")[0]
    song
  end
  
  #artistname=(filename.split(" - ")[0])
  
  def artist_name=(name)
    guy = Artist.find_or_create_by_name(name)
    guy.add_song(self)
    guy
  end
end
  