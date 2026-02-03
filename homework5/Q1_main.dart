// Q1
// . Sum, Average & Compare - Ask the user for three numbers. - Print their sum and average.
// Then, check if the average is greater than 50 or not
import 'dart:io';

void main() {
  // Ask for three numbers
  print('Enter first number:');
  int num1 = int.parse(stdin.readLineSync()!);
  
  print('Enter second number:');
  int num2 = int.parse(stdin.readLineSync()!);
  
  print('Enter third number:');
  int num3 = int.parse(stdin.readLineSync()!);
  
  // Calculate sum and average
  int sum = num1 + num2 + num3;
  double average = sum / 3;
  
  print('\n--- Results ---');
  print('Numbers: $num1, $num2, $num3');
  print('Sum: $sum');
  print('Average: ${average.toStringAsFixed(2)}');
  
  // Check if average > 50
  if (average > 50) {
    print('Average is greater than 50');
  } else {
    print('Average is NOT greater than 50');
  }
}
