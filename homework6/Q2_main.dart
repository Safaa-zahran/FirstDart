// Q2
// Class with Constructor - Create a class Car with attributes brand and year. - Add a constructor
// to set the values when creating the object. - In main(), create two car objects with different data and
// print their details
void main() {
  // Create first car object
  Car car1 = Car('Toyota', 2020);
  print('Car 1: ${car1.brand}, Year: ${car1.year}');
  
  // Create second car object
  Car car2 = Car('BMW', 2023);
  print('Car 2: ${car2.brand}, Year: ${car2.year}');
}

class Car {
  String brand;
  int year;
  
  // Constructor
  Car(this.brand, this.year);
}