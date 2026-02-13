// Given two strings s and t, return true if t is an anagram of s, and false otherwise.
void main(){
  print(isAnagram('anagram', 'nagaram')); 
  print(isAnagram('rat', 'car'));         
  print(isAnagram('listen', 'silent'));   
  print(isAnagram('hello', 'world')); 
}

 bool isAnagram(String s, String t) {
  if (s.length != t.length) return false;

  Map<String, int> count = {};

  for (String c in s.split('')) {
    count[c] = (count[c] ?? 0) + 1;
  }

  for (String c in t.split('')) {
    if (!count.containsKey(c) || count[c] == 0) return false;
    count[c] = count[c]! - 1;
  }

  return true;
}
