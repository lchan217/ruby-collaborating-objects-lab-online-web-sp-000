require "pry"
class Song 
  attr_accessor :name, :artist 
  def initialize(name)
    @name = name
  end 
  def artist=(artist)
    @artist = artist 
    @artist.add_song(self) #you needed help with this line
  end 
  def self.new_by_filename(file_name)
    array = file_name.split(" - ")
    new_song = self.new(array[1])
    new_song.artist= Artist.find_or_create_by_name(array[0]) #call on this method to associate it 
    new_song
  end
end   