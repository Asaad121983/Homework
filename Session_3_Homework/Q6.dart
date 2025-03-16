void main() {
  Map<String, dynamic> student = {
    "name": "Ali",
    "age": 20,
    "grade": "A"
  };

  print(" Initial Student Map: $student");

  student["studentID"] = 12345;
  print(" After Adding studentID: $student");

  student["grade"] = "A+";
  print("After Updating Grade: $student");

  student.remove("age");
  print("After Removing Age: $student");

  print("\nIterating Over Student Details:");
  iterateStudentMap(student);
}

void iterateStudentMap(Map<String, dynamic> student) {
  student.forEach((key, value) {
    print("$key: $value");
  });
}