class MusicLibraryController
  
  attr_accessor :path
  
  def initialize(path='./db/mp3s')
    @path = path
    musicimporter = MusicImporter.new(path)
    musicimporter.import
  end
  
  def call 
    
    input = gets.strip
    
    puts "Welcome to your music library!"
    puts "To list all of your songs, enter 'list songs'."
    
    
    
    
    
  end
  
end