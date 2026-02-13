// Q2
// Create a class Car with private fields _brand and _year.- Add setters that reject empty brand names and years less than 1886 (first car invention).- Add getters for both.- In main(), demonstrate creating two car objects (one val
void main() {

  Car car1 = Car();
  car1.brand = 'Toyota';
  car1.year = 2020;
  print('Car 1 → Brand: ${car1.brand}, Year: ${car1.year}');

  Car car2 = Car();
  car2.brand = '';    
  car2.year = 1800;   
  print('Car 2 → Brand: ${car2.brand}, Year: ${car2.year}');
}

class Car {
  String _brand = 'Unknown';
  int _year = 1886;

  String get brand => _brand;
  int get year => _year;

  set brand(String value) {
    if (value.isEmpty) {
      print('Invalid brand: name cannot be empty');
    } else {
      _brand = value;
    }
  }

  set year(int value) {
    if (value < 1886) {
      print('Invalid year: must be 1886 or later');
    } else {
      _year = value;
    }
  }
}