
// Fizz Class
function Fizz() {
  this.is = function(number) {
    if (number % 3 == 0) {
      return true;
    } 
  }
  this.define = function() {
    return "Fizz";
  }
}

// Buzz class
function Buzz() {
  this.is = function(number) {
    if (number % 5 == 0) {
      return true;
    } 
  }
  this.define = function() {
    return "Buzz";
  }
}

// Fizzbuzz class
function Fizzbuzz() {
  this.is = function(number) {
    if (number % 5 == 0 && number % 3 ==0) {
      return true;
    } 
  }
  this.define = function() {
    return "Fizzbuzz";
  }
}

// NoneOfTheAbove class
function NoneOfTheAbove() {
  this.is = function(number) {
    return true;
  }
  this.define = function(number) {
    return number;
  }
}

var checkNumber = function(number) {
  var fizz = new Fizz();
  var buzz = new Buzz();
  var fizzbuzz = new Fizzbuzz();
  var noneOfTheAbove = new NoneOfTheAbove();
  var definitions = [fizzbuzz, fizz, buzz, noneOfTheAbove];
  var definitionsLength = definitions.length;

  //for (var i = 0; i < definitionsLength; i++) {
  //}

  if (fizzbuzz.is(number) === true) {
    var number = fizzbuzz.number;
  } else if (fizz.is(number) === true) {
     var number = fizz.define();
  } else if (buzz.is(number) === true) {
     var number = buzz.define();
  } else {
     var number = number;
  }
  console.log(number);
}


var playGame = function(start, finish) {
  for (var i = start; i <= finish; i++) { 
    checkNumber(i);
  }
}

playGame(1,20);


