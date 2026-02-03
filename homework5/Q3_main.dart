// Q3
//  Word Reversal & Vowel Count - Take a word from the user. - Print the word reversed, and also
// count how many vowels it has.
import 'dart:io';

void main() {
  // Ask for word
  print('Enter a word:');
  String word = stdin.readLineSync()!;
  
  // Reverse the word
  String reversed = word.split('').reversed.join('');
  
  // Count vowels
  int vowelCount = 0;
  List<String> vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];
  
  for (int i = 0; i < word.length; i++) {
    if (vowels.contains(word[i])) {
      vowelCount++;
    }
  }
  
  print('\n--- Results ---');
  print('Original word: $word');
  print('Reversed word: $reversed');
  print('Vowel count: $vowelCount');
}