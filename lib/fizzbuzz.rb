class Game
  
  attr_accessor :numbers, :numbers_fizzed, :numbers_buzzed, :numbers_fizzbuzzed, :numbers_fizzbuzzbuzzed
  
  def initialize(start = 1, finish = 100)
    start = start
    finish = finish
    @numbers = *(start..finish)
    fizz(numbers)
    fizzbuzz(numbers)
  end
  
  def fizzbuzz(numbers)
    fizzbuzz = "fizzbuzz"
    @numbers_fizzbuzzed = numbers.map { |x| (x % 3 == 0 && x % 5 == 0) ? fizzbuzz : x }
  end
  
  def fizz(numbers)
    fizz = "fizz"
    @numbers_fizzed = numbers.map { |x| x % 3 == 0 ? fizz : x }
    buzz(numbers_fizzed)
  end
  
  def buzz(numbers_fizzed)
    buzz = "buzz"
    @numbers_buzzed = numbers_fizzed.map { |x| x % 5 == 0 ? buzz : x }
    #fizzbuzzbuzz(numbers_buzzed)
  end
  
  def fizzbuzzbuzz
    @numbers_fizzbuzzbuzzed = numbers_buzzed
  end
  
end