/*
Find Prime Numbers in a Range
Write a function that takes two numbers (start, end) 
and returns a list of all prime numbers between them.
Ensure that the function correctly identifies prime numbers
 and handles edge cases where start is
greater than end.
*/

bool checkPrime(int number) {
  for (int i = 2; i < number; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

void main(){
// call function
int start = 10;  
  int end = 50;   

  List<int> primes = findPrimes(start, end);
  if (primes.isEmpty) {
    print("No prime numbers found ");
  } else {
    print("Prime numbers in the range $start to $end are: ${primes}");
  }
}

List<int> findPrimes(int start, int end) {
  List<int> primes = [];
  if (start > end) {
    return primes; 
  }
  for (int number = start; number <= end; number++) {
    if (checkPrime(number)) {
      primes.add(number);
    }
  }
  return primes;
}


