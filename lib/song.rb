class Song 
  
  attr_accessor :name, :artist, :genre
  extend Concerns::Findable
  @@all = []
  
  def initialize(name, artist=nil, genre=nil)
    @name = name
    self.artist=artist if artist
    self.genre=genre if genre
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def save
    @@all << self unless @@all.include?(self)
  end
  
  def self.create(song, artist=nil, genre=nil)
    song = self.new(song, artist, genre)
    song.save
    song
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  
  def genre=(genre)
    @genre = genre
    genre.songs << self unless genre.songs.include?(self)
  end
  
  def self.find_by_name(name)
    @@all.find do |song|
      song.name == name
    end
  end
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) ? self.find_by_name(name) : self.create(name)
  end
  
  def self.new_from_filename(filename)
    song = self.new(filename)
    song.save 
    song.name
  end
  
  def self.create_from_filename
    # does the same thing as .new_from_filename but also saves the newly-created song to the @@all class variable
    
  end

end