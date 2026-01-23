// Q10
void main(){
  // Create a Dart program that builds a map of country codes. Print the value for 'EG', add a new entry
// 'QA': 'Qatar', print the total length, and check if 'JO' exists—if not, print 'Jordan missing'

Map<String,dynamic>countryCodes = {"EG":"egypt", 'US': 'United States',
    'SA': 'Saudi Arabia'};

print(countryCodes['EG']);

countryCodes['QA']= 'Qatar';

print(countryCodes.length);

if(!countryCodes.keys.contains('JO')){
  print("'Jordan missing'");
}
}