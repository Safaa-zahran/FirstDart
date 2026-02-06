// Q3
//  Modify Attributes - Create a class Person with attributes name and age. - Create an object and
// set its initial values using a constructor. - Then change the age of the object and print the updated
// details
void main() {
  // Create object with initial values
  Person person = Person('Ahmed', 25);
  
  print('Name: ${person.name}');
  print('Age: ${person.age}');
  
  // Change the age
  person.age = 30;
  
  print('Name: ${person.name}');
  print('Age: ${person.age}');
}

class Person {
  String name;
  int age;
  
  Person(this.name, this.age);
}