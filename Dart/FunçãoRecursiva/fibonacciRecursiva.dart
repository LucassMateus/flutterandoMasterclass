int fibonacci (int n) {
  return n < 2 ? n : (fibonacci(n - 1) + fibonacci(n - 2));
}
 main () {
  var i = 5;
  print('fibonacci($i) = ${fibonacci(i)}');
 }


