//Q5

// var vs dynamic in Dart
// var: Type is inferred at initialization and cannot change.
// dynamic: Type can change anytime.

void main() {
  // var - type is fixed
  var name = 'John';  // String
  name = 'Sarah';     // ✓ OK
  // name = 42;       // ✗ Error!
  
  // dynamic - type can change
  dynamic value = 'Hello';  // String
  value = 42;               // ✓ OK - now int
  value = true;             // ✓ OK - now bool
}