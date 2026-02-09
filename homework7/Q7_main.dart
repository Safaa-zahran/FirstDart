// Q7
// 
import 'dart:io';

void main(){
  print("Insert Number :");
  String? input = stdin.readLineSync();

  if(input != null){
    int sum = 0;
    do{
      
      sum =0;
      if(input == null){
        break;
      }

      for(int i = 0; i < input.length; i++){
        sum += int.parse(input[i]) % 10;
      }

      input = sum.toString();
      
      

    }while(input.length > 1);

    print(sum);

  }
  
 


}

