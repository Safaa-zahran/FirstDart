// Q1
// Create a program that removes duplicate numbers from the list [5, 3, 5, 7, 3, 9] and prints how
// many unique numbers remain
void main() {
  List<int> numbers = [5, 3, 5, 7, 3, 9];
  
  print('Original list: $numbers');
  
  Set<int> uniqueNumbers = numbers.toSet();
  
  print('After removing duplicates: $uniqueNumbers');
  print('Duplicates removed: ${numbers.length - uniqueNumbers.length}');
  print('Unique numbers remaining: ${uniqueNumbers.length}');
}