// Q5
// Find Second Largest Number - Ask the user to enter 6 numbers in a list. - Print the largest
// number and the second largest number (without sorting the list)
import 'dart:io';

void main() {
  List<int> numbers = [];
  
  print('Enter 6 numbers:');
  
  for (int i = 1; i <= 6; i++) {
    print('Number $i:');
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }
  
  print('\nYour numbers: $numbers');
  
  // Find largest and second largest
  int largest = numbers[0];
  int secondLargest = numbers[0];
  
  for (int num in numbers) {
    if (num > largest) {
      secondLargest = largest;
      largest = num;
    } else if (num > secondLargest && num != largest) {
      secondLargest = num;
    }
  }
  
  print('\nLargest number: $largest');
  print('Second largest number: $secondLargest');
}