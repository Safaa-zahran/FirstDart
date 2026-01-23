//Q14
/**Write a Dart program that works with a nullable list of integers. If the list is null or empty, print 'No
scores'. Otherwise, calculate and print the sum of the first and last elements and check if it is
greater than or equal to 40 */

void main(){
List<int>? scores = [];
  if( scores == null || scores.isEmpty){
    print('No Scores');
  }else {
    int sum = scores.first + scores.last;
    print(sum);

  if(sum >= 40){
    print('it is greater than or equal to 40');
  }
  }


}