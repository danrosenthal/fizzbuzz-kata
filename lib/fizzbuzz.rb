class Game
  attr_accessor :numbers, :numbers_mapped
                
  def initialize(start = 1, finish = 100)
    start = start
    finish = finish
    @numbers = *(start..finish)
    map_numbers(numbers)
  end
  
  def map_numbers(numbers)
    f = "fizz"
    b = "buzz"
    fb = "fizzbuzz"
    @numbers_mapped = numbers.map do |x|
      if x % 3 == 0
        f
      else
        x
      end
    end
    output(numbers_mapped)
  end
  
  def output(numbers_mapped)
    #print numbers_mapped
  end
  
end