// Q1
void main() {
  List<Vehicle> fleet = [
    Car(brand: 'Toyota', tankCapacity: 50, fuelEfficiency: 15, numPassengers: 4),
    Car(brand: 'BMW', tankCapacity: 40, fuelEfficiency: 12, numPassengers: 8),
    Truck(brand: 'Volvo', tankCapacity: 200, fuelEfficiency: 5, cargoWeight: 10000),
    Truck(brand: 'Ford', tankCapacity: 80, fuelEfficiency: 6, cargoWeight: 25000),
  ];

  List<double> distances = [100, 250, 400];

  print('=' * 55);

  for (Vehicle v in fleet) {
    double totalDistance = distances.reduce((a, b) => a + b);
    double totalFuel     = v.computeFuel(totalDistance);
    bool   canComplete   = v.canCompleteTrip(totalDistance);

    print('${v.brand} (${v.runtimeType})');
    print('  Total Distance : $totalDistance km');
    print('  Fuel Needed    : ${totalFuel.toStringAsFixed(2)} L');
    print('  Tank Capacity  : ${v.tankCapacity} L');
    print('  Status         : ${canComplete ? " Can complete" : " Cannot complete"}');
    print('-' * 55);
  }
}


class Vehicle {
  String _brand;
  double _tankCapacity;
  double _fuelEfficiency; 

  Vehicle({
    required String brand,
    required double tankCapacity,
    required double fuelEfficiency,
  })  : _brand          = 'Unknown',
        _tankCapacity   = 10,
        _fuelEfficiency = 1 {
    this.brand          = brand;
    this.tankCapacity   = tankCapacity;
    this.fuelEfficiency = fuelEfficiency;
  }

  
  String get brand          => _brand;
  double get tankCapacity   => _tankCapacity;
  double get fuelEfficiency => _fuelEfficiency;

  
  set brand(String value) {
    if (value.isEmpty) {
      print('Invalid brand: cannot be empty');
    } else {
      _brand = value;
    }
  }

  set tankCapacity(double value) {
    if (value <= 0) {
      print('Invalid tankCapacity: must be > 0');
    } else {
      _tankCapacity = value;
    }
  }

  set fuelEfficiency(double value) {
    if (value <= 0) {
      print('Invalid fuelEfficiency: must be > 0');
    } else {
      _fuelEfficiency = value;
    }
  }

  double computeFuel(double distance) => distance / _fuelEfficiency;

  bool canCompleteTrip(double distance) => computeFuel(distance) <= _tankCapacity;
}


class Car extends Vehicle {
  int _numPassengers;

  Car({
    required String brand,
    required double tankCapacity,
    required double fuelEfficiency,
    required int numPassengers,
  })  : _numPassengers = 1,
        super(brand: brand, tankCapacity: tankCapacity, fuelEfficiency: fuelEfficiency) {
    this.numPassengers = numPassengers;
  }

  int get numPassengers => _numPassengers;

  set numPassengers(int value) {
    if (value < 1 || value > 7) {
      print('Invalid numPassengers: must be between 1 and 7');
    } else {
      _numPassengers = value;
    }
  }

  @override
  double computeFuel(double distance) {
    double penalty = 1 + (_numPassengers - 1) * 0.05;
    return (distance / fuelEfficiency) * penalty;
  }
}

class Truck extends Vehicle {
  double _cargoWeight;

  Truck({
    required String brand,
    required double tankCapacity,
    required double fuelEfficiency,
    required double cargoWeight,
  })  : _cargoWeight = 0,
        super(brand: brand, tankCapacity: tankCapacity, fuelEfficiency: fuelEfficiency) {
    this.cargoWeight = cargoWeight;
  }

  double get cargoWeight => _cargoWeight;

  set cargoWeight(double value) {
    if (value < 0) {
      print('Invalid cargoWeight: cannot be negative');
    } else {
      _cargoWeight = value;
    }
  }

  @override
  double computeFuel(double distance) {
    double penalty = 1 + (_cargoWeight / 1000) * 0.02;
    return (distance / fuelEfficiency) * penalty;
  }

  @override
  bool canCompleteTrip(double distance) {
    if (_cargoWeight > 20000) {
      print('${brand}: cargo exceeds 20,000 kg limit');
      return false;
    }
    return computeFuel(distance) <= tankCapacity;
  }
}