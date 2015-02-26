class Game
  attr_reader :fizzbuzz_game
                
  def initialize(start = 1, finish = 100)
    numbers = *(start..finish)
    play_game(numbers)
  end
  
  def play_game(numbers)
    @fizzbuzz_game = numbers.map do |number| check(number)
    end
  end
  
  def check(number)
    fizz = Fizz.new
    buzz = Buzz.new
    fizzbuzz = FizzBuzz.new
    none = NoneOfTheAbove.new
    
    [fizzbuzz, fizz, buzz, none].each do |check|
      return check.define(number) if check.is?(number)
    end
  end
end


class Fizz
  def is?(number)
    number % 3 == 0
  end
  def define(number)
    "Fizz"
  end
end

class Buzz
  def is?(number)
    number % 5 == 0
  end
  def define(number)
    "Buzz"
  end
end

class FizzBuzz
  def is?(number)
    number % 3 == 0 && number % 5 == 0
  end
  def define(number)
    "FizzBuzz"
  end
end

class NoneOfTheAbove
  def is?(number)
    true
  end
  def define(number)
    number
  end
end
