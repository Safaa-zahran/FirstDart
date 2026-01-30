// Q7
// Create a program with the scores [10, 0, 20, 30]. Ignore the zeros, add the other numbers together,
// and print the total.
void main() {
  List<int> scores = [10, 0, 20, 30];
  int total = 0;
  
  print('Scores: $scores');
  
  for (int score in scores) {
    if (score != 0) {
      total += score;
      print('Adding $score, total now: $total');
    } else {
      print('Skipping 0');
    }
  }
  
  print('\nFinal total: $total');
}