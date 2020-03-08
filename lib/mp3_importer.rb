class MP3Importer

  attr_accessor :files, :path

  def initialize(path)
    @path = path
    @files = Dir["./spec/fixtures/mp3s"]

  end





end
