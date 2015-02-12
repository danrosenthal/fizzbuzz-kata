class Game
  attr_accessor :numbers, 
                :numbers_fizzed, 
                :numbers_buzzed, 
                :numbers_fizzbuzzed, 
                :numbers_fizzbuzzbuzzed,
                :numbers_boomed
                
  def initialize(start = 1, finish = 100)
    start = start
    finish = finish
    @numbers = *(start..finish)
    fizzbuzz(numbers)
  end
  
  def fizzbuzz(numbers)
    fizzbuzz = "fizzbuzz"
    @numbers_fizzbuzzed = numbers.map { |x| (x % 3 == 0 && x % 5 == 0) ? fizzbuzz : x }
    boom(numbers_fizzbuzzed)
  end
  
  def boom(numbers_fizzbuzzed)
    boom = "boom"
    @numbers_boomed = numbers_fizzbuzzed.map { |x| x % 12 == 0 ? boom : x }
    fizz(numbers_boomed)
  end
  
  def fizz(numbers_boomed)
    fizz = "fizz"
    @numbers_fizzed = numbers_boomed.map { |x| x % 3 == 0 ? fizz : x }
    buzz(numbers_fizzed)
  end
  
  def buzz(numbers_fizzed)
    buzz = "buzz"
    @numbers_buzzed = numbers_fizzed.map { |x| x % 5 == 0 ? buzz : x }
    fizzbuzzbuzz(numbers_buzzed)
  end
  
  def fizzbuzzbuzz(numbers_buzzed)
    @numbers_fizzbuzzbuzzed = numbers_buzzed
    output(numbers_fizzbuzzbuzzed)
  end
  
  def output(numbers_fizzbuzzbuzzed)
    print numbers_fizzbuzzbuzzed
  end
  
end