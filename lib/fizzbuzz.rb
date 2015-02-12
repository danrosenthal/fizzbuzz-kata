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
    bo = "boom"
    @numbers_mapped = numbers.map do |x|
      if divisible_by_3(x) && !divisible_by_5(x) && !divisible_by_12(x)
        f
      elsif divisible_by_5(x) && !divisible_by_3(x) && !divisible_by_12(x)
        b
      elsif divisible_by_3(x) && divisible_by_5(x) && !divisible_by_12(x)
        fb
      elsif divisible_by_12(x)
        bo
      else
        x
      end
    end
    output(numbers_mapped)
  end
  
  def output(numbers_mapped)
    print numbers_mapped
  end
  
  private
  
  def divisible_by_3(x)
    x % 3 == 0
  end
  
  def divisible_by_5(x)
    x % 5 == 0
  end
  
  def divisible_by_12(x)
    x % 12 == 0
  end
  
end

Game.new