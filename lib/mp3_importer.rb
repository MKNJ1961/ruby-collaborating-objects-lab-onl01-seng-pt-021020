# class MP3Importer
# 
#   attr_accessor :path
# 
#   def initialize(path)
#     @path = path
#   end
# 
#   def files
#     @files ||= Dir.entries(@path).select {|song| !File.directory?(song) && song.end_with?(".mp3")}
#   end
# 
#   def import
#     files.each {|song| Song.new_by_filename(song)}
#   end
# 
# end





# class MP3Importer
#   attr_accessor :files, :path
#
#   def initialize(path)
#     @path = path
#     @files = Dir[path+ "/*"].select{|file| file.end_with?(".mp3")}.map{|file_name| file_name.split("/").last}
#   end
#
#
#   def import
#       @files.each do |data|
#         split_data = data.split(" - ")
#         song_title = split_data[1].strip
#         song = Song.new(song_title)
#         artist = Artist.new_by_filename(data)
#         artist.add_song(song)
#       end
#   end
#
# end
