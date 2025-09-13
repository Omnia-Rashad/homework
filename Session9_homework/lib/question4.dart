//  Q4 Create a class Employee with attributes name and salary. Add a method giveRaise(int amount)
//  that increases the salary. In main(), create an employee, give them a raise, and print the new
//  salary

void main() {
  Employee employee1 = Employee('Omnia', 100);
  print('The new salary : ${employee1.giveRaise(20)}');
}

class Employee {
  String? name;
  double? salary;

  Employee(String name, [double? salary]) {
    this.name = name;
    this.salary = salary;
  }

  double giveRaise(int amount) {
    salary = (salary ?? 0) + amount;
    return salary!;
  }
}
