//Q18
/**Write a Dart program that reads environment variables from a map. If a value is null, replace it with
a default. Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on
conditions */

void main() {
  Map<String, dynamic> envVariables = {
    'APP_NAME': 'TestApp',
    'ENV': 'development',
    'API_URL': null,
    'DEBUG': 'true'
  };
  
  String appName = envVariables['APP_NAME'] ?? 'DefaultApp';
  String environment = envVariables['ENV'] ?? 'development';
  String apiUrl = envVariables['API_URL'] ?? 'https://api.default.com';
  String debug = envVariables['DEBUG'] ?? 'false';
  
  print('APP_NAME: ${appName.toUpperCase()}');
  print('ENV: ${environment.toUpperCase()}');
  print('API_URL: ${apiUrl.toUpperCase()}');
  print('DEBUG: ${debug.toUpperCase()}');
  
  if (environment == 'production' && debug == 'false') {
    print('✓ Prod ready');
  } else {
    print('✗ Non-prod');
  }
}