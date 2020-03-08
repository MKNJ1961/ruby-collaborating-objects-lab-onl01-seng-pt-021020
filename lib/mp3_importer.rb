class MP3Importer

  attr_accessor :files, :path

  def initialize(path)
    @path = path
  @files = Dir[path+ "/*"].select{|file| file.end_with?(".mp3")}.map{|file_name| file_name.split("/").last}

  end





end
