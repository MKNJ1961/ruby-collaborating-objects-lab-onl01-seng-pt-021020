class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist_name, song_name, extra = filename.split(" - ")
    song = self.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(song)
  end
end


# 
# class Song
# 
#   attr_accessor :name, :artist
# 
#   def initialize(name)
#     @name = name
#   end
# 
#   def artist_name=(name)
#     self.artist = Artist.find_or_create_by_name(name)
#     artist.add_song(self)
#   end
# 
#   def self.new_by_filename(file_name)
#     song = file_name.split(" - ")[1]
#     artist = file_name.split(" - ")[0]
#     new_song = self.new(song)
#     new_song.artist_name = artist
#     new_song
#     song
#   end
# 
# 
# end
