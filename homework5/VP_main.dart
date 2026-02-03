// leetCode
// A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

// Given a string s, return true if it is a palindrome, or false otherwise.
void main() {
  // Test cases
  List<String> testCases = [
    "A man, a plan, a canal: Panama",
    "race a car",
    "Was it a car or a cat I saw?",
    "Madam",
    "hello",
    "12321",
    "A1B2B1A"
  ];
  
  for (String s in testCases) {
    bool result = isPalindrome(s);
    print('Input: "$s"');
    print('Result: $result\n');
  }
}

bool isPalindrome(String s) {
  // Convert to lowercase and remove non-alphanumeric characters
  String cleaned = '';
  
  for (int i = 0; i < s.length; i++) {
    String char = s[i].toLowerCase();
    
    // Check if alphanumeric (a-z or 0-9)
    if ((char.codeUnitAt(0) >= 97 && char.codeUnitAt(0) <= 122) || 
        (char.codeUnitAt(0) >= 48 && char.codeUnitAt(0) <= 57)) {
      cleaned += char;
    }
  }
  
  // Check if cleaned string is palindrome
  int left = 0;
  int right = cleaned.length - 1;
  
  while (left < right) {
    if (cleaned[left] != cleaned[right]) {
      return false;
    }
    left++;
    right--;
  }
  
  return true;
}


 