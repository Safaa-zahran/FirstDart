//Q13

/**Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. Then use a switch
statement to print a message for each grade */

void main(){
  int mark = 85;
  String grade;

  if(mark >= 90){
    grade = "A";
  }else if(mark >= 80){
    grade= "B";
  } else if(mark >= 70){
    grade = "C";
  } else if(mark >= 60){
    grade = "D";
  }
  else{
    grade = "F";
  }


  switch(grade){
    case "A":
        print('Excellent! ');
        break;
    case "B":
        print('Very Good! ');
        break;
    case "C":
        print('Good!');
        break;
    case "D":
        print('Pass!');
        break;
    default:
        print('fail');
  }
}