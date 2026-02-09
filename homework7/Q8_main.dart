// Q8
//  Ask the user to input a sentence. Print all the words that appear only once in the sentence. Also
// print the total count of unique words

import 'dart:io';

void main(){
Map<String, int> words = {};
String? input = null;

print("Insert Sentence :");
input = stdin.readLineSync();

if (input == null)
  return;

List<String> inputWords = input.split(' ');
for(var word in inputWords){
  words[word] = (words[word] ?? 0)  + 1;
}

int countUniqueWords = 0;

words.forEach((key,value){
  if(value == 1){
    print(key);
    countUniqueWords++;
  }
});
print(countUniqueWords);





  
}