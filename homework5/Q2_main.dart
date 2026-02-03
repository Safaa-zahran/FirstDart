// q2
// Odd Numbers in a Range - Ask the user to input a number n. - Print all odd numbers between 1
// and n, and also print how many odd numbers were found
import 'dart:io';

void main() {
  // Ask for number
  print('Enter a number:');
  int n = int.parse(stdin.readLineSync()!);
  
  print('\nOdd numbers between 1 and $n:');
  
  int count = 0;
  
  for (int i = 1; i <= n; i++) {
    if (i % 2 != 0) {
      print(i);
      count++;
    }
  }
  
  print('\nTotal odd numbers found: $count');
}