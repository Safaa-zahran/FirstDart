// Q5
// Create a class Course with attributes title and duration (default = 3 months). Create two
// courses: one with custom duration and one with the default. Print both
void main(){
  Course course1 = Course("Flutter", 6);
  print("course1 ${course1.title} , ${course1.duration}");
  Course course2 = Course("Dart");
  print("course2 ${course2.title} , ${course2.duration}");
}
class Course {
  String title;
  int duration ;

  Course(this.title,[this.duration= 3]);

}