describe("Fizz", function() {
  var fizz;

  beforeEach(function() {
    fizz = new Fizz(3);
  });

  it("should return true if the number is divisible by 3", function() {
    
    expect(fizz.is()).toEqual(true);
  });
});

describe("Buzz", function() {
  var buzz;

  beforeEach(function() {
    buzz = new Buzz(5);
  });

  it("should return true if the number is divisible by 5", function() {
    
    expect(buzz.is()).toEqual(true);
  });
});

describe("FizzBuzz", function() {
  var fizzbuzz;

  beforeEach(function() {
    fizzbuzz = new FizzBuzz(15);
  });

  it("should return true if the number is divisible by 15", function() {
    
    expect(fizzbuzz.is()).toEqual(true);
  });
});

describe("Game", function() {
  var game;

  beforeEach(function() {
    game = new Game(15);
  });

  it("should return fizzbuzz for 15", function() {
    
    expect(game.run()).toEqual("fizzbuzz");
  });
});
