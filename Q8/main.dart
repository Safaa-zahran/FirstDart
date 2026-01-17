//Q8
//num: A parent type that can hold both int and double values.
//double: A specific type for decimal numbers only 

void main() {
  // double - only decimals
  double price = 19.99;
  // price = 20;  // ✗ Error! Must be decimal
  price = 20.0;   // ✓ OK
  
  // num - can be int OR double
  num value = 10;      // ✓ OK - int
  value = 10.5;        // ✓ OK - double
  value = 42;          // ✓ OK - int again
  
  // Practical use
  num add(num a, num b) => a + b;
  
  print(add(5, 3));      // 8
  print(add(5.5, 2.5));  // 8.0
  print(add(5, 2.5));    // 7.5 - mixed!
}