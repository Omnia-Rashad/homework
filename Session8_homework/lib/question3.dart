// Q3. Modify Attributes - Create a class Person with attributes name and age. - Create an object and
//set its initial values using a constructor. - Then change the age of the object and print the updated
// details

void main() {
  Person person1 = Person('Omnia', 21);
  person1.age = 22;
  print(person1.age);
}

class Person {
  String? name;
  int? age;

  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }
}
