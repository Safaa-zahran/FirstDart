// // Q2
// // 2. Food Delivery App – Orders & Menu
// Imagine you are building a food delivery app.- The app has a menu of food items (each with a name, price, and category like "Pizza" or "Drinks").- A user can add multiple items to an order.- The app should calculat
// Q2
class FoodItem {
  String name;
  double price;
  String category;

  FoodItem(this.name, this.price, this.category);
}

List<FoodItem> order = [];

void addToOrder(FoodItem item) {
  order.add(item);
  print(' Added: ${item.name}');
}

double get total => order.fold(0, (sum, item) => sum + item.price);

void showOrder() {
  print('\n Order Summary:');
  for (var item in order) {
    print('   ${item.name} (${item.category}) - \$${item.price}');
  }
  print(' Total: \$${total.toStringAsFixed(2)}');
}

void main() {
  final menu = [
    FoodItem('Margherita Pizza', 8.99, 'Pizza'),
    FoodItem('Coca Cola', 1.99, 'Drinks'),
    FoodItem('Burger', 6.99, 'Fast Food'),
  ];

  addToOrder(menu[0]);
  addToOrder(menu[1]);
  addToOrder(menu[2]);

  showOrder();
}
