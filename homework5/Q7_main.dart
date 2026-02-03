//  Q7
//  Sentence Word Counter - Ask the user for a short sentence. - Print how many words it contains
// and how many characters (excluding spaces).
import 'dart:io';

void main() {
  // Ask for sentence
  print('Enter a sentence:');
  String sentence = stdin.readLineSync()!;
  
  // Count words
  List<String> words = sentence.trim().split(' ');
  int wordCount = words.length;
  
  // Count characters (excluding spaces)
  int charCount = 0;
  for (int i = 0; i < sentence.length; i++) {
    if (sentence[i] != ' ') {
      charCount++;
    }
  }
  
  print('\n--- Results ---');
  print('Sentence: "$sentence"');
  print('Word count: $wordCount');
  print('Character count (no spaces): $charCount');
}
