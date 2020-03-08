class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song.save
  end

  def self.find_by_artist(artist)
    Song.all.select do | song |
      song.artist == artist
    end
  end

  def self.all
    @@all
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

  def save
    @@all << self
    self
  end






#
# class Song
#
#   attr_accessor :name, :artist
#
#
#
#   def initialize(name)
#     @name = name
#   end
#
#   def self.new_by_filename(file_name)
#     song = file_name.split(" - ")[1]
#     artist = file_name.split(" - ")[0]
#     new_song = self.new(song)
#     new_song.artist_name = artist
#     new_song
#   end
#
#   def artist_name=(name)
#     self.artist = Artist.find_or_create_by_name(name)
#     artist.add_song(self)
#   end
#
#   def self.all
#     @@all
#   end

end


# class Song
#
#   def self.new_by_filename(file)
#     data = file.split("/").last
#     name = data.split(" - ")[1]
#     song = Song.new(name)
#     artist = Artist.new_by_filename(file)
#     song.artist = artist
#     song
#   end
#
#
#   attr_accessor :name, :artist
#
#   @@all
#
#   def initialize(name)
#     @name = name
#   end
#
#
# end
