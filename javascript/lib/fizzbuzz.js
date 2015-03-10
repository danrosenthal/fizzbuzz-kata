var checkNumber = function(number) {
  if (number % 5 == 0 && number % 3 ==0) {
    var number = "Fizzbuzz";
  } else if (number % 3 == 0) {
     var number = "Fizz";
  } else if (number % 5 == 0) {
     var number = "Buzz";
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

playGame(1,100);


