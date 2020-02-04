class MusicLibraryController
  
  attr_accessor :path
  
  def initialize(path=./db/mp3s/)
    @path
    MusicImporter.new
  end
  
  def call 
    # 
  end
  
end