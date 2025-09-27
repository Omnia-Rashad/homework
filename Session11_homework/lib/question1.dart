// Q1
//  Design an OOP model for planning trip fuel across multiple vehicle types.
//  Requirements:- Provide a general vehicle type with encapsulated core data (private fields) and validated constructors
//  (invalid → print an error; keep previous values).- Create at least two specialized vehicle types that inherit from the general type and introduce one
//  private field each affecting fuel usage, with validation.- Define a fuel computation method in the general type; specialized types must override it with their own
//  rule.- In a mixed collection of vehicles, given a list of trip distances, compute total fuel per vehicle and print
//  which vehicles cannot complete the route under their own constraints (you define the constraint per
//  type)

void main() {
  vehicle1 car = vehicle1(0.2, 'BMW', 2020, 5, 20);
  vehicle2 van = vehicle2(1000, 'Toyota', 2025, 10, 200);
  List<GeneralVehicle> vehicles = [car, van];
  List<double> tripDistance = [150, 200];

  for (var vehicle in vehicles) {
    double fuelNeeded = 0;
    for (var distance in tripDistance) {
      fuelNeeded = vehicle.fuelConsumtion(distance);
    }
    if (fuelNeeded <= vehicle._totalFuel) {
      print("Can complete trip");
    } else {
      print("Can't complete trip");
    }
  }
}

class GeneralVehicle {
  String _brand;
  int _year;
  int _defaultFuelConsumtion; //fuelConsumedPer2KM
  int _totalFuel;

  set brand(String brand) {
    if (brand.isNotEmpty) {
      _brand = brand;
    } else {
      print("brand can't be empty");
    }
  }

  set year(int year) {
    if (year > 0) {
      _year = year;
    } else {
      print("year can't be less than zero");
    }
  }

  String get brand => _brand;

  int get year => _year;

  GeneralVehicle(
    this._brand,
    this._year,
    this._defaultFuelConsumtion,
    this._totalFuel,
  ) {
    if (brand.isNotEmpty) {
      _brand = brand;
    } else {
      print("brand can't be empty");
    }
    if (year > 0) {
      _year = year;
    } else {
      print("year can't be less than zero");
    }
  }

  double fuelConsumtion(double distance) {
    return 0;
  }
}

class vehicle1 extends GeneralVehicle {
  double _airConditionOn;
  vehicle1(
    this._airConditionOn, //aircondition increase the consumtion of fuel by fraction .1
    super._brand,
    super._year,
    super.defaultFuelConsumtion,
    super._totalFuel,
  );
  @override
  double fuelConsumtion(double distance) {
    double fuelNeeded =
        (distance / _defaultFuelConsumtion) * (1 + _airConditionOn);
    //increase 1 to increase consumption 110% 1=100, fraction=10
    return fuelNeeded;
  }
}

class vehicle2 extends GeneralVehicle {
  double _cargoWeight;
  vehicle2(
    this._cargoWeight, //_cargoWeight with tone (convert it to fraction first) increase the consumtion of fuel by fraction .2
    super._vehicleType,
    super._distance,
    super.defaultFuelConsumtion,
    super._totalFuel,
  );
  @override
  double fuelConsumtion(double distance) {
    double fuelNeeded =
        (distance / _defaultFuelConsumtion) * (1 + (_cargoWeight / 1000) * .2);
    return fuelNeeded;
  }
}
