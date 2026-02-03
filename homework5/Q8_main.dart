// Q8
// Digits Operations - Ask the user for a number (e.g., 528). - Print the sum of its digits and also
// print the largest digit
import 'dart:io';

void main() {
  // Ask for number
  print('Enter a number:');
  int number = int.parse(stdin.readLineSync()!);
  
  // Convert to string to process digits
  String numStr = number.toString();
  
  int sum = 0;
  int largest = 0;
  
  for (int i = 0; i < numStr.length; i++) {
    int digit = int.parse(numStr[i]);
    sum += digit;
    
    if (digit > largest) {
      largest = digit;
    }
  }
  
  print('\n--- Results ---');
  print('Number: $number');
  print('Sum of digits: $sum');
  print('Largest digit: $largest');
}
