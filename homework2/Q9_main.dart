//Q9
import 'dart:io';

void main(){
  //a) Create List> students with two items, each having name and grade
  List<Map<String , dynamic>> students = [
  {'name':'ali', 'grade': 2.8}
  ,
  {'name': 'maha','grade': 3.1}
  ];

  //b) Print the grade of the second student using index and key.
print(students[1]['grade']);

//c) Add both grades and print the average grade as double.

double firstGrade = students[0]['grade'];
double secondGrade = students[1]['grade'];
  
double average = (firstGrade + secondGrade) / 2;
print(average);
}