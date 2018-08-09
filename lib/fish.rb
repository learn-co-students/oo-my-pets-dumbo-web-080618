class Fish
  attr_reader :name,:mood,:owner
  def initialize(name)
    @name = name
    @mood = "nervous"
  end
  def mood=(emotion)
    @mood =  emotion
  end
end
