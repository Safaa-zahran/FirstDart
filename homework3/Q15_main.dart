//Q15
/**Write a Dart program that simulates a simple router using a switch statement on a string path ('/',
'/products', '/profile', or other). Handle each case with appropriate output, including maps and null
safety where needed */

void main(){

  String path = '/profile';
  
  // Map <String, dynamic> routers = {
  //   '/': "First",
  //   '/products': "products",
  //   '/profile': "profile",
  //   '/login': null
  // };


  switch (path){
    case '/':
      Map<String, dynamic> routers = {'/': "First"};
      print("first router ./");
      break;
    case '/products': 
      Map<String, dynamic> routers = {'/products': "products"};
      print("products router");
      break;
    case  '/profile':
      Map<String, dynamic> routers = {'/profile': "profile"};
      print("profile router");
      break;
    default:
      Map<String, dynamic> routers = {'/login': null};
      print("Null router");

  }
}