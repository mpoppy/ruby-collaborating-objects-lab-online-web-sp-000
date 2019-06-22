
class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    #find first if doesn't exist then create a new instance of Artist and assign name
    if self.all.include?(name)
      
    else #if condition false
      name = Artist.new(name)
    end
  end

end
