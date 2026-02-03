// Q4
// Simple List Analyzer - Let the user enter 5 numbers into a list. - Print the largest and smallest
// numbers, and then calculate the difference between them
import 'dart:io';

void main() {
  List<int> numbers = [];
  
  // Ask for 5 numbers
  print('Enter 5 numbers:');
  
  for (int i = 1; i <= 5; i++) {
    print('Number $i:');
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }
  
  // Find largest and smallest
  int largest = numbers[0];
  int smallest = numbers[0];
  
  for (int num in numbers) {
    if (num > largest) largest = num;
    if (num < smallest) smallest = num;
  }
  
  // Calculate difference
  int difference = largest - smallest;
  
  print('\n--- Results ---');
  print('Numbers: $numbers');
  print('Largest: $largest');
  print('Smallest: $smallest');
  print('Difference: $difference');
}
