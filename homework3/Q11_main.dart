// Q11
void main(){
  /**Write a Dart program that applies discounts to a price. Use nested if/else to apply different
discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.
Print the final price. */

  double price = 550.99;
  bool isStudent = true;
  bool hasCoupon = true;
  double underPrice = 800;
  double finalPrice = price;
  
  if (isStudent) {
    if (hasCoupon) {
      finalPrice = price * 0.80; 
    } 
    
    if (price < underPrice) {
      finalPrice = price * 0.90; 
    }
  }

  //  else {
  //   if (hasCoupon) {
  //     finalPrice = price * 0.85;  
  //   } else if (price > underPrice) {
  //     finalPrice = price * 0.95; 
  //   }
  // }
  
  print("Original price: \$${price}");
  print("Final price: \$${finalPrice.toStringAsFixed(2)}");

// if (isStudent){
//   if(hasCoupon){
//      finalPrice = price*0.80;
//      print(finalPrice);
//   }
// if(price>underPrice){
//     finalPrice = price*.90;
//     print(finalPrice);
//    }else {
//       print("Price for student without Discount: \$${finalPrice}");
//    }
// }

//   print("Final price: \$${finalPrice}");

}