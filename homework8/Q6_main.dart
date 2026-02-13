// Q6
void main() {
  List<String> tests = ['()', '()[]{}', '(]', '([)]', '{[]}'];

  for (String s in tests) {
    print('$s → ${isValid(s) ? "Valid" : "Invalid"}');
  }
}

bool isValid(String s) {
  List<String> stack = [];

  Map<String, String> pairs = {
    ')': '(',
    '}': '{',
    ']': '[',
  };

  for (int i = 0; i < s.length; i++) {
    String c = s[i];

    if (c == '(' || c == '{' || c == '[') {
      stack.add(c);
    } else {
      if (stack.isEmpty || stack.last != pairs[c]) {
        return false;
      }
      stack.removeLast();
    }
  }

  return stack.isEmpty;
}