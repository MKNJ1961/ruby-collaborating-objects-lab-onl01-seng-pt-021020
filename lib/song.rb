# 
# class Song
# 
#   attr_accessor :name, :artist
# 
#   def initialize(name)
#     @name = name
#   end
# 
#     def self.all
#       @@all
#     end
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
# end


class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name

  end

  def self.new_by_filename(filename)
    song = Song.new(filename.split(' - ')[1])
    song.artist = Artist.find_or_create_by_name(filename.split(' - ')[0])
    song.artist.add_song(song)
    song
  end


end
