//Q20

/**Write a Dart program that checks access rules for a ticket gate. If the user is under 18, check if they
have a parent. Use a switch statement on an area variable (general or restricted) to decide what
message to print */

void main() {
  int age = 19;
  bool hasParent = false;
  String area = 'general';  
  

  bool canEnter = false;
  
  if (age >= 18) {
    canEnter = true;
  } else {
    if (hasParent) {
      canEnter = true;
    }
  }
  

  
  if (canEnter) {
    switch (area) {
      case 'general':
        print('Access granted - Welcome to general area');
        break;
      case 'restricted':
        print('Restricted area - Special permission needed');
        break;
      default:
        print('Unknown area');
    }
  } else {
    print('Access denied - Need parent');
  }
}