//Q15


void main() {
  // Type is fixed and cannot change
  String name = 'Ahmed';
  name = 'Sara';    // ✓ OK
  // name = 42;     // ✗ Error! Cannot change type
  
  // Even with var, type is static
  var age = 25;     // Dart infers: int
  age = 30;         // ✓ OK
  // age = '30';    // ✗ Error!
}