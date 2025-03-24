/*
Employee Payroll System
Implement an employee payroll system.
Create a base Employee class with properties: name, id, and salary.
Implement a method calculateSalary() in the base class.
Create two subclasses:
- FullTimeEmployee: Adds a bonus and overrides calculateSalary() 
to include the bonus.
- PartTimeEmployee: Adds hoursWorked and hourlyRate, overriding calculateSalary() to compute
salary based on hours worked.
*/

class Employee {
  String name;
  int id;
  double salary;

  Employee(this.name, this.id, this.salary);

  double calculateSalary() {
    return salary;
  }
}

class FullTimeEmployee extends Employee {
  double bonus;

  FullTimeEmployee(String name, int id, double salary, this.bonus)
    : super(name, id, salary);

  @override
  double calculateSalary() {
    return salary + bonus;
  }
}

class PartTimeEmployee extends Employee {
  int hoursWorked;
  double hourlyRate;

  PartTimeEmployee(String name, int id, this.hoursWorked, this.hourlyRate)
    : super(name, id, 0);

  @override
  double calculateSalary() {
    return hoursWorked * hourlyRate;
  }
}

void main() {
  FullTimeEmployee fullTime = FullTimeEmployee("Alice", 1, 3000, 500);
  PartTimeEmployee partTime = PartTimeEmployee("Bob", 2, 80, 20);

  print("Full-time employee salary: ${fullTime.calculateSalary()}"); // 3500.0
  print("Part-time employee salary: ${partTime.calculateSalary()}"); // 1600.0
}
