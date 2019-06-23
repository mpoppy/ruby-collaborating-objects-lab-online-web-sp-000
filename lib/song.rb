
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    song_name = file_name.split(" - ")
    song = self.new(song_name[1])
    song.artist = Artist.new(song_name[0])
  end


end
