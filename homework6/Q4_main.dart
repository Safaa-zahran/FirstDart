// Q4
//  Class with Default Attribute Value - Create a class Product with attributes name and price. 
// Give price a default value of 0. - Create two objects: one with a custom price and one with the
// default price. Print their details.
void main() {
  // Object with custom price
  Product product1 = Product('Laptop', 1200.0);
  print('Product 1:');
  print('  Name: ${product1.name}');
  print('  Price: \$${product1.price}');
  
  // Object with default price
  Product product2 = Product.withDefaultPrice('Mouse');
  print('\nProduct 2:');
  print('  Name: ${product2.name}');
  print('  Price: \$${product2.price}');
}

class Product {
  String name;
  double price;
  
  // Constructor with custom price
  Product(this.name, this.price);
  
  // Named constructor with default price
  Product.withDefaultPrice(this.name) : price = 0;
}