// Q6
// Sentence Analyzer - Ask the user to input a sentence. - Print how many words it contains. 
// Then print the shortest word and the longest word from the sentence
import 'dart:io';

void main() {
  print('Enter a sentence:');
  String sentence = stdin.readLineSync()!;
  
  // Split into words
  List<String> words = sentence.trim().split(' ');
  
  // Count words
  int wordCount = words.length;
  
  // Find shortest and longest
  String shortest = words[0];
  String longest = words[0];
  
  for (String word in words) {
    if (word.length < shortest.length) {
      shortest = word;
    }
    if (word.length > longest.length) {
      longest = word;
    }
  }
  
  print('\n--- Analysis ---');
  print('Sentence: "$sentence"');
  print('Word count: $wordCount');
  print('Shortest word: "$shortest" (${shortest.length} letters)');
  print('Longest word: "$longest" (${longest.length} letters)');
}