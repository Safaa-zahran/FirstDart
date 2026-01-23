//Q10
void main(){
//a) Demonstrate var vs dynamic: assign dynamic value first as an int, then as a String, printing
//after each
dynamic value = 42; // int
value = 'Hello Dart'; // string
//dynamic value: Can hold any type and change types freely
//First assigned 42 (int)
//Then changed to 'Hello Dart' (String) - no error!
  
//var
var number = 42;// int
number = 100;  //  same type(int)

// var number: Type inferred once as int and cannot change
// Can update to another int value
// Cannot change to a different type like String
  
//b) Create var greeting = 'Hi'; change it to another String and print
var greeting = 'Hi';
greeting = 'Hello';
print(greeting);

//c) Declare num pi = 3.14159; print pi.toInt() and pi.toStringAsFixed(3).
num pi = 3.14159;
print(pi.toInt());
print(pi.toStringAsFixed(3));

}