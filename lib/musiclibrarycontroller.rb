class MusicLibraryController
  
  attr_accessor :path
  
  def initialize(path='./db/mp3s')
    @path = path
    musicimporter = MusicImporter.new(path)
    musicimporter.import
  end
  
  def call 
    
    puts "Welcome to your music library!"
    
    input = gets.strip
    
    
    
  end
  
end