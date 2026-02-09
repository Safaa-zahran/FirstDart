// Q6
// Create a class NumberCheck with an attribute value. Add a method isEven() that returns true if
// the number is even, false otherwise. In main(), test the method with one number
void main(){
  NumberCheck number = NumberCheck(11);
  if (number.isEven()){
    print("even number");
  }else{
    print("odd number");
  }

}
class NumberCheck{
  int value;

  NumberCheck(this.value);

  bool isEven(){
    if (this.value % 2 == 0){
      return true;
    }
    return false;
  }

  

}