//Q3
// 
void main() {

  Grade g1 = Grade();
  g1.score = 75;
  print('Score: ${g1.score}, isPass: ${g1.isPass}');

  Grade g2 = Grade();
  g2.score = 50;
  print('Score: ${g2.score}, isPass: ${g2.isPass}');

  Grade g3 = Grade();
  g3.score = 110;
  print('Score: ${g3.score}, isPass: ${g3.isPass}');

  Grade g4 = Grade();
  g4.score = -10;
  print('Score: ${g4.score}, isPass: ${g4.isPass}');
}

class Grade {
  int _score = 0;

  int get score => _score;

  bool get isPass => _score >= 50;

  set score(int value) {
    if (value < 0 || value > 100) {
      print('Invalid score');
    } else {
      _score = value;
    }
  }
}