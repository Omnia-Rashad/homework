// Q2. Class with Constructor - Create a class Car with attributes brand and year. - Add a constructor
//to set the values when creating the object. - In main(), create two car objects with different data and
//print their details

void main() {
  Car car1 = Car('BMW', 2024);
  print(car1.brand);
  print(car1.year);

  Car car2 = Car('Nissan', 2025);
  print(car2.brand);
  print(car2.year);
}

class Car {
  String? brand;
  int? year;

  Car(String brand, int year) {
    this.brand = brand;
    this.year = year;
  }
}
