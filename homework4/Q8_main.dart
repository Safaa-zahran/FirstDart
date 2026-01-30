// Q8
// Create a program with a setting called API_URL that is empty. If it is empty, replace it with
// 'https://example.com'. Print the new value in capital letters
void main() {
  String? API_URL = '';
  
  print('Original API_URL: "$API_URL"');
  
  // If empty, replace with default
  if (API_URL.isEmpty) {
    API_URL = 'https://example.com';
    print('Replaced with default value');
  }
  
  // Print in uppercase
  print('Final API_URL: ${API_URL.toUpperCase()}');
}
