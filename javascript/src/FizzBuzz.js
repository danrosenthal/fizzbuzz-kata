function Fizz(number) {
  this.define = function () {
    return "fizz";
  };
  this.is = function () {
    if (number % 3 == 0) {
      return true;
    }
  };
};

function Buzz(number) {
  this.define = function () {
    return "buzz";
  };
  this.is = function () {
    if (number % 5 == 0) {
      return true;
    }
  };
};

function FizzBuzz(number) {
  this.define = function () {
    return "fizzbuzz";
  };
  this.is = function () {
    if (number % 15 == 0) {
      return true;
    }
  };
};

function Original(number) {
  this.define = function () {
    return number;
  };
  this.is = function () {
    return true;
  };
};

function Game(number) {
  this.run = function () {
    var fizz = new Fizz(number);
    var buzz = new Buzz(number);
    var fizzbuzz = new FizzBuzz(number);
    var original = new Original(number);
    var definitions = [fizzbuzz, fizz, buzz, original];

    for (var i = 0; i < definitions.length; i++) {
      if (definitions[i].is() == true) {
        return definitions[i].define();
        break;
      }
    };
  };
};

function Count(start, finish) {
  for (var i = start; i <= finish; i++) {
    var game = new Game(i);
    console.log(game.run());
  }
}

Count(1,20);