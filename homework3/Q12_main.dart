//Q12 
/**Create a Dart program that safely reads a phone number from a map. If the phone number is null,
print a default message. Then update the phone number and print its length. */
void main (){

Map<String, String?> userInfo = {
"Name":"Noha",
"phone": null
};
if(userInfo["phone"] == null){
  print("the phone number is not defind");
}
userInfo["phone"] = "01234567890";



print(userInfo['phone']!.length);
}
