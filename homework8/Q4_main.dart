// Q4
void main() {

  Product p1 = Product();
  p1.name = 'Laptop';
  p1.price = 1000;
  print('Name: ${p1.name}, Price: ${p1.price}, Discounted: ${p1.discountedPrice}');

  Product p2 = Product();
  p2.name = '';
  p2.price = 500;
  print('Name: ${p2.name}, Price: ${p2.price}, Discounted: ${p2.discountedPrice}');

  Product p3 = Product();
  p3.name = 'Phone';
  p3.price = -200;
  print('Name: ${p3.name}, Price: ${p3.price}, Discounted: ${p3.discountedPrice}');
}

class Product {
  String _name = 'Unknown';
  double _price = 0;

  String get name => _name;
  double get price => _price;

  double get discountedPrice => _price * 0.9;

  
  set name(String value) {
    if (value.isEmpty) {
      print('Invalid name: cannot be empty');
    } else {
      _name = value;
    }
  }

  set price(double value) {
    if (value < 0) {
      print('Invalid price: cannot be negative');
    } else {
      _price = value;
    }
  }
}