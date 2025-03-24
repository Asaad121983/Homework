/*
Check Leap Year
Write a function that determines if a given year is a leap year.
A year is a leap year if it is divisible by 4 but not divisible by 100, 
except if it is also divisible by 400.
*/

bool isLeapYear(int year) {
  return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
}

void main() {
  print(isLeapYear(2024)); 
  print(isLeapYear(1900)); 
  print(isLeapYear(2000)); 
  print(isLeapYear(2023)); 
}
