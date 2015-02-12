class Game
  attr_accessor :numbers, :numbers_mapped
                
  def initialize(start = 1, finish = 100)
    start = start
    finish = finish
    @numbers = *(start..finish)
  #  fizzbuzz(numbers)
  end
  
  #def map_numbers(numbers)
  #  @numbers_mapped = numbers
  #  output(numbers_mapped)
  #end
  
  #def output(numbers_mapped)
  #  print numbers_mapped
  #end
  
end