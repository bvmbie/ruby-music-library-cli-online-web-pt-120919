class MusicImporter
  attr_accessor :path
  
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.entries(@path).select! {|entry| entry.end_with?(".mp3")}
  end
  
  def self.import 
    # imports all of the files from the library, instantiating a new Song object for each file
    
  end 
  
end