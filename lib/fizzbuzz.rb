class Game
  
  attr_accessor :stuff
  
  def initialize(start = 1, finish = 100)
    @start = start
    @finish = finish
    @stuff = *(start..finish)
  end
  
end