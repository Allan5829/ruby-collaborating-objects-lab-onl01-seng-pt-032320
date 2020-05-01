<<<<<<< HEAD
class Song 
  
  attr_accessor :artist, :name 
  
  @@all = []
  
  def initialize (name)
    @name = name 
    @@all << self
  end 
  
  def self.all
    @@all 
  end 
  
  def self.new_by_filename(filename)
    new_song = filename.chomp(".mp3").split(" - ")
    song = self.new (new_song [1])
    song.artist_name = new_song [0]
    song
  end
  
=======
class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

>>>>>>> 4f3c2c03071dc42d6958eb05023a2a1e350daac1
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
<<<<<<< HEAD
  
end 
=======

  def self.new_by_filename(file)
    song_info = file.chomp(".mp3").split(" - ")
    song = Song.new(song_info[1])
    song.artist_name = song_info[0]
    song
  end
end
>>>>>>> 4f3c2c03071dc42d6958eb05023a2a1e350daac1
