/*
Student Grades Program
Topic: Functions, Parameters, Return statement
Exercise: Create a function called calculateGrade that
 takes a score (0 to 100) as a parameter and returns a letter grade
(e.g., A, B, C). Then write a main function 
to call calculateGrade and print the grade for a given score.

*/
void main() {
  int score = 99;
  print("The Grade is : ${CalcGrade(score)}");
}

String CalcGrade(int score) {
  if (score >= 90)
    return 'A';
  else if (score >= 80)
    return 'B';
  else if (score >= 70)
    return 'C';
  else if (score > 60)
    return 'D';
  else
    return 'F';
}
