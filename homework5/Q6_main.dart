//  Q6
//  Number Guessing (3 Tries) - Generate a random number between 1 and 20. - Let the user
// guess up to 3 times. If they fail, reveal the correct number.
import 'dart:io';
import 'dart:math';

void main() {
  // Generate random number between 1 and 20
  Random random = Random();
  int secretNumber = random.nextInt(20) + 1;
  
  print('=== Number Guessing Game ===');
  print('I have picked a number between 1 and 20.');
  print('You have 3 tries to guess it!\n');
  
  bool guessed = false;
  
  for (int attempt = 1; attempt <= 3; attempt++) {
    print('Attempt $attempt/3:');
    int guess = int.parse(stdin.readLineSync()!);
    
    if (guess == secretNumber) {
      print(' Correct! You guessed it in $attempt tries!');
      guessed = true;
      break;
    } else if (guess < secretNumber) {
      print('Too low! Try again.\n');
    } else {
      print('Too high! Try again.\n');
    }
  }
  
  if (!guessed) {
    print('Game Over! The correct number was: $secretNumber');
  }
}
