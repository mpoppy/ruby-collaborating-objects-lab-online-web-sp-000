
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    song_name = file_name.split(" - ")
    song = self.new(song_name[1])
    # artist_name = file_name.split(" - ")
    # song.artist = Artist.new(artist_name)

  end


end
