class MusicLibraryController
  
  attr_accessor :path
  
  def initialize(path)
    @path
    MusicImporter.new
  end
  
  def call 
    # starts the CLI
    
  end
  
end