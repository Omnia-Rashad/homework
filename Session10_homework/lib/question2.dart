//  Q2
//  Create a class Car with private fields _brand and _year.
//- Add setters that reject empty brand names and years less than 1886 (first car invention).
//- Add getters for both.- In main(), demonstrate creating two car objects (on

void main() {
  Car car1 = Car();
  car1.brand = 'BMW';
  car1.year = 2025;
  print(car1.brand);
  print(car1.year);

  Car car2 = Car();
  car2.brand = "";
  car2.year = 1880;
}

class Car {
  String? _barnd;
  int? _year;

  set brand(String brand) {
    if (brand.trim().isNotEmpty) {
      this._barnd = brand;
    } else {
      print("that isn't available brand name");
    }
  }

  set year(int year) {
    if (year >= 1886) {
      this._year = year;
    } else {
      print("that isn't available year");
    }
  }

  String get brand => this._barnd!;

  int get year => this._year!;
}
