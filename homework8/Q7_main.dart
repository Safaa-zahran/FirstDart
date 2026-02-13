// Q7
import 'dart:io';

void main() {
  print('Enter numbers separated by spaces:');
  String input = stdin.readLineSync()!;
  List<int> numbers = input.split(' ').map((e) => int.parse(e)).toList();

  int largest = numbers.reduce((a, b) => a > b ? a : b);
  int smallest = numbers.reduce((a, b) => a < b ? a : b);
  print('\nLargest: $largest');
  print('Smallest: $smallest');
  print('Difference: ${largest - smallest}');

  double average = numbers.reduce((a, b) => a + b) / numbers.length;
  print('\nAverage: ${average.toStringAsFixed(2)}');

  List<int> aboveAverage = numbers.where((n) => n > average).toList();
  print('\nNumbers above average: $aboveAverage');

  int even = numbers.where((n) => n % 2 == 0).length;
  int odd = numbers.where((n) => n % 2 != 0).length;
  print('\nEven count: $even');
  print('Odd count: $odd');
}