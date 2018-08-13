class Cat
  attr_accessor :mood
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
    @songs = []
  end

  # def add_song(song)
  #   @songs << song
  # end

  # def songs
  #   @songs
  # end
end
