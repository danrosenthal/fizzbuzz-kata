class Game
  attr_accessor :numbers_mapped
                
  def initialize(start = 1, finish = 100)
    start = start
    finish = finish
    numbers = *(start..finish)
    map_numbers(numbers)
  end
  
  def map_numbers(numbers)
    f = "fizz"; b = "buzz"; fb = "fizzbuzz"; bo = "boom"
    @numbers_mapped = numbers.map do |number|
      if divisible_by_3(number) && !divisible_by_5(number) && !divisible_by_12(number)
        f
      elsif divisible_by_5(number) && !divisible_by_3(number) && !divisible_by_12(number)
        b
      elsif divisible_by_3_and_5(number) && !divisible_by_12(number)
        fb
      elsif divisible_by_12(number)
        bo
      else
        number
      end
    end
    output(numbers_mapped)
  end
  
  def output(numbers_mapped)
    puts numbers_mapped
  end
  
  private
  
  def divisible_by_3(number)
    number % 3 == 0
  end
  
  def divisible_by_5(number)
    number % 5 == 0
  end
  
  def divisible_by_3_and_5(number)
    divisible_by_3(number) && divisible_by_5(number)
  end
  
  def divisible_by_12(number)
    number % 12 == 0
  end
  
end