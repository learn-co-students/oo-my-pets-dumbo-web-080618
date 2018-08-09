class Fish
  attr_reader :name
  attr_accessor :mood

  def initialize(name)
    @mood = 'nervous'
    @name = name
  end


    def mood
      @mood
    end
  # code goes here
end
