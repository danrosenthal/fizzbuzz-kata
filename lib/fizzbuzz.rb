class Game
  
  attr_accessor :numbers, :numbers_fizzed, :numbers_buzzed
  
  def initialize(start = 1, finish = 100)
    start = start
    finish = finish
    @numbers = *(start..finish)
    fizz(numbers)
  end
  
  def fizz(numbers)
    fizz = "fizz"
    @numbers_fizzed = numbers.map { |x| x % 3 == 0 ? fizz : x }
    buzz(numbers_fizzed)
  end
  
  def buzz(numbers_fizzed)
    @numbers_buzzed = numbers_fizzed
  end
  
end