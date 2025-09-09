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
