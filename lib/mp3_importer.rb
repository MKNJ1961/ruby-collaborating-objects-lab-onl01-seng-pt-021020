class MP3Importer

  attr_accessor :files, :path

  def initialize(path)
    @path = path
    @files = Dir["glob/**/*.rb"]

  end





end
