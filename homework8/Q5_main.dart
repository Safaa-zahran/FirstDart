// Q5
void main() {

  Book b1 = Book();
  b1.title = 'Dart Programming';
  b1.pages = 300;
  print('Title: ${b1.title}, Pages: ${b1.pages}, Reading Time: ${b1.readingTime} mins');

  Book b2 = Book();
  b2.title = '';
  b2.pages = 150;
  print('Title: ${b2.title}, Pages: ${b2.pages}, Reading Time: ${b2.readingTime} mins');

  Book b3 = Book();
  b3.title = 'Flutter Guide';
  b3.pages = -50;
  print('Title: ${b3.title}, Pages: ${b3.pages}, Reading Time: ${b3.readingTime} mins');
}

class Book {
  String _title = 'Unknown';
  int _pages = 1;

  String get title => _title;
  int get pages => _pages;

  int get readingTime => _pages * 2;

  set title(String value) {
    if (value.isEmpty) {
      print('Invalid title: cannot be empty');
    } else {
      _title = value;
    }
  }

  set pages(int value) {
    if (value <= 0) {
      print('Invalid pages: must be greater than 0');
    } else {
      _pages = value;
    }
  }
}