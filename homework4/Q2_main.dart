// Q2
// Create a program that stores country codes and names. Start with: EG → Egypt, SA → Saudi
// Arabia, AE → UAE. Add QA → Qatar and then print the name of the country with the code EG
void main() {
  // Create map with country codes and names
  Map<String, String> countries = {
    'EG': 'Egypt',
    'SA': 'Saudi Arabia',
    'AE': 'UAE'
  };
  
  print('Initial countries: $countries');
  
  // Add Qatar
  countries['QA'] = 'Qatar';
  
  print('After adding Qatar: $countries');
  
  // Print the name of country with code EG
  print('Country with code EG: ${countries['EG']}');
}