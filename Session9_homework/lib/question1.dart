//  Q1 Create a class City with attributes name and population. In main(), create two city objects and
//  print their details.

void main() {
  City city1 = City('Ciro', 10000);
  print('${city1.name} : ${city1.population}');

  City city2 = City('Alex', 1000);
  print('${city2.name} : ${city2.population}');
}

class City {
  String? name;
  int? population;

  City(String name, int population) {
    this.name = name;
    this.population = population;
  }
}
